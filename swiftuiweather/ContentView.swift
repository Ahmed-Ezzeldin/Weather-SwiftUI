//
//  ContentView.swift
//  swiftuiweather
//
//  Created by Cloud Secrets on 10/05/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            BackgroundView(topColor: .blue, bottomColor: Color("lightBlue"))
            VStack{
                
                CityTextView(cityName: "Cupertino, CA")
                
                
                MainWeatherStatusView(imageName: "cloud.sun.fill", temperatur: 74)
                
                Spacer()
                
                HStack(spacing: 20){
                    WeatherDayView(dayOfWeek: "TUS",
                                   imageName: "cloud.sun.fill",
                                   temperature: 74)
                    WeatherDayView(dayOfWeek: "WED",
                                   imageName: "sun.max.fill",
                                   temperature: 88)
                    WeatherDayView(dayOfWeek: "THU",
                                   imageName: "wind.snow",
                                   temperature: 55)
                    WeatherDayView(dayOfWeek: "FRI",
                                   imageName: "sunset.fill",
                                   temperature: 60)
                    WeatherDayView(dayOfWeek: "SAT",
                                   imageName: "snow",
                                   temperature: 25)
                }
                Spacer()
                Button(action: {
                    print("Hello World")
                }, label: {
                    Text("Change Day Time")
                        .frame(width: 280, height: 50)
                        .background(.white)
                        .font(.system(size: 20 , weight: .bold ,design: .default))
                        .cornerRadius(10)
                })
                Spacer()
                
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct WeatherDayView: View {
    var dayOfWeek : String = "";
    var imageName : String = "";
    var temperature : Int = 0;
    
    var body: some View {
        VStack{
            Text(dayOfWeek)
                .font(.system(size: 18 ,weight:.medium, design: .default))
                .foregroundColor(.white)
            
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio( contentMode: .fit)
                .frame(width:40, height:40)
            Text("\(temperature)°")
                .font(.system(size: 28 ,weight:.medium, design: .default))
                .foregroundColor(.white)
            
            
        }
    }
}

struct BackgroundView: View {
    var topColor: Color
    var bottomColor: Color
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [topColor , bottomColor]),
                       startPoint: .topLeading,
                       endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(.all)
    }
}


struct CityTextView: View{
    var cityName: String;
    var body: some View{
        Text(cityName)
            .font(.system(size: 32 , weight: .medium , design: .default))
            .foregroundColor(Color.white)
            .padding()
            .padding()
        
    }
}


struct MainWeatherStatusView: View{
    var imageName: String;
    var temperatur: Int;
    
    var body: some View{
        VStack(spacing: 10){
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio( contentMode: .fit)
                .frame(width:180, height:180)
            
            Text("\(temperatur)°")
                .font(.system(size: 70 , weight: .medium ))
                .foregroundColor(.white)
        }
        .padding()
        
    }
}
