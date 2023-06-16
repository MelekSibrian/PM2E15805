﻿using Plugin.Media;
using Plugin.Media.Abstractions;
using PM2E15805.Services;
using PM2E15805.Views;
using System;
using Xamarin.Essentials;
using Xamarin.Forms;

namespace PM2E15805
{
    public partial class MainPage : ContentPage
    {
        String pathImagen;

        public MainPage()
        {
            InitializeComponent();
            ubicacion();
        }

        private async void ImageButton_Clicked(object sender, EventArgs e)
        {
            try {
                var takepic = await CrossMedia.Current.TakePhotoAsync(new StoreCameraMediaOptions()
                {
                    DefaultCamera = CameraDevice.Front,
                    Name = DateTime.Now.ToString(),
                    Directory = "Fotos",
                    SaveToAlbum = true
                });

                pathImagen = takepic.Path;


                if (takepic != null)
                {
                    Foto.Source = ImageSource.FromStream(() => {
                        return takepic.GetStream();
                    });
                }
            }
            catch (Exception ex)
            {
                await DisplayAlert("Error", ex.Message.ToString(), "Ok");
            }
            
        }

        private async void Agregar_Clicked(object sender, EventArgs e)
        {
            try
            {
                if (pathImagen == "" || String.IsNullOrEmpty(txtDes.Text) || String.IsNullOrEmpty(txtLat.Text) || String.IsNullOrEmpty(txtLon.Text))
                {
                    await DisplayAlert("Aviso", "Datos faltantes: imagen, latitud, longitud o descripción (Para la ubicacion recuerde tenerla activa)", "Ingrese los datos");

                }
                else
                {
                    var emple = new Lugar
                    {
                        latitud = txtLat.Text,
                        longitud = txtLon.Text,
                        descripcion = txtDes.Text,
                        image = pathImagen
                    };

                    var resultado = await App.BaseDatos.EmpleadoGuardar(emple);
                    if (resultado != 0)
                    {
                        await DisplayAlert("Aviso", "Datos guardados con exito", "OK");
                        Foto.Source = ("");
                        pathImagen = "";
                        txtDes.Text = "";
                        ubicacion();

                    }
                    else
                    {
                        await DisplayAlert("Error", "Debe habilitar la ubicacion", "OK");
                    }
                }
            }
            catch (Exception ex)
            {
                await DisplayAlert("Error", ex.Message.ToString(), "Ok");
            }
        }



        private async void Lista_Clicked(object sender, EventArgs e)
        {
            var newpage = new ListEmple();
            await Navigation.PushAsync(newpage);
        }

        private async void Eliminar_Clicked(object sender, EventArgs e)
        {
            if (String.IsNullOrEmpty(lblCod.Text))
            {
                await DisplayAlert("Error", "No se puede actualizar si esta no es una vista", "Ok");
            }
            else
            {
                var emple = new Lugar
                {
                    id = Convert.ToInt32(lblCod.Text)
                };
                var resultado = await App.BaseDatos.EmpleadoBorrar(emple);
                if (resultado != 0)
                {
                    await DisplayAlert("Aviso", "Dato eliminado con exito", "OK");
                    await Navigation.PopAsync();
                }
                else
                {
                    await DisplayAlert("Error", "Error al eliminar datos", "OK");
                }

            }
        }


        async private void ubicacion()
        {
            try
            {
                var location = await Geolocation.GetLastKnownLocationAsync();

                if (location != null)
                {
                    txtLat.Text = location.Latitude.ToString();
                    txtLon.Text = location.Longitude.ToString();
                }
            }
            catch (FeatureNotSupportedException fnsEx)
            {
                await DisplayAlert("Error", "Error: " + fnsEx, "OK");
            }

        }
        public bool EmptyField(Entry campo)
        {
            return String.IsNullOrEmpty(campo.Text);
        }

        private void Salir_Clicked(object sender, EventArgs e)
        {
            System.Diagnostics.Process.GetCurrentProcess().Kill();
        }

    }
}
