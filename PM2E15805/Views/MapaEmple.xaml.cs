﻿
using Plugin.Geolocator;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.NetworkInformation;
using System.Runtime.InteropServices.ComTypes;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using Xamarin.Forms.Maps;

namespace PM2E15805.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class MapaEmple : ContentPage
    {
        public MapaEmple()
        {
            InitializeComponent();
        }

        protected override async void OnAppearing()
        {
            String latitudGuardada = lblLat.Text;
            String longitudGuardada = lblLon.Text;
            String descripcionGuardada = lblDesc.Text;



            base.OnAppearing();
            Pin ubicacion = new Pin();
            ubicacion.Label = "Tu destino";
            ubicacion.Address = descripcionGuardada;
            ubicacion.Position = new Position(Convert.ToDouble(latitudGuardada), Convert.ToDouble(longitudGuardada));
            Mapa.Pins.Add(ubicacion);


            Mapa.MoveToRegion(new MapSpan(new Position(Convert.ToDouble(latitudGuardada), Convert.ToDouble(longitudGuardada)), 1, 1));



            var localizacion = CrossGeolocator.Current;
            if (localizacion != null)
            {
                localizacion.PositionChanged += localizacion_positionChanged;


                if (!localizacion.IsListening)
                {
                    await localizacion.StartListeningAsync(TimeSpan.FromSeconds(10), 100);
                }
            }
        }

        private void localizacion_positionChanged(object sender, Plugin.Geolocator.Abstractions.PositionEventArgs e)
        {
            var posicion_mapa = new Position(e.Position.Latitude, e.Position.Longitude);
            Mapa.MoveToRegion(new MapSpan(posicion_mapa, 1, 1));
        }


    }
}