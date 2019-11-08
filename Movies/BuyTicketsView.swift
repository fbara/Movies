//
//  BuyTicketsView.swift
//  Movies
//
//  Created by Frank Bara on 11/6/19.
//  Copyright © 2019 BaraLabs. All rights reserved.
//

import SwiftUI

struct BuyTicketsView: View {
    
    let movie = Movie(name: "Tomb Raider", imageName: "raider")
    
    let topDays: [Day] = [
        .init(month: "MAR", day: "09", daysOfWeek: "FRIDAY"),
        .init(month: "MAR", day: "10", daysOfWeek: "SATURDAY"),
        .init(month: "MAR", day: "11", daysOfWeek: "SUNDAY"),
        .init(month: "MAR", day: "12", daysOfWeek: "MONDAY"),
        .init(month: "MAR", day: "13", daysOfWeek: "TUESDAY")
    ]
    
    let middleDays: [Day] = [
        .init(month: "MAR", day: "14", daysOfWeek: "WEDNESDAY"),
        .init(month: "MAR", day: "15", daysOfWeek: "THURSDAY"),
        .init(month: "MAR", day: "16", daysOfWeek: "FRIDAY"),
        .init(month: "MAR", day: "17", daysOfWeek: "SATURDAY"),
        .init(month: "MAR", day: "18", daysOfWeek: "SUNDAY")
    ]
    
    var body: some View {
        GeometryReader { geo in
            VStack(spacing: 16) {
                HStack {
                    Text("Buy Tickets")
                        .font(.system(size: 20))
                }
                HStack(alignment: .top, spacing: 16) {
                    Image("raider")
                    .frame(width: 150, height: 200)
                    .cornerRadius(12)
                    .shadow(radius: 10)
                    VStack(alignment: .leading, spacing: 8.0) {
                        Text("Tomb Raider")
                            .font(.system(size: 18, weight: .heavy))
                        Text("Drama|Fantasy")
                        HStack {
                            Button(action: {
                                
                            }, label: {
                                Text("Mar 10 Friday")
                                    .font(.headline)
                                .bold()
                                    .padding(.horizontal)
                                    .padding(.vertical, 8)
                                    .overlay(
                                    RoundedRectangle(cornerRadius: 12)
                                        .stroke(Color.gray, lineWidth: 1)
                                    )
                                    .foregroundColor(.black)
                            })
                            
                            Button(action: {
                                
                            }, label: {
                                Text("7:00PM")
                                    .font(.headline)
                                .bold()
                                    .padding(.horizontal, 8)
                                    .padding(.vertical, 8)
                                    .overlay(
                                    RoundedRectangle(cornerRadius: 12)
                                        .stroke(Color.gray, lineWidth: 1)
                                    )
                                    .foregroundColor(.black)
                            })
                        }
                    }.padding(.top, 12)
                }
                VStack(alignment: .leading, spacing: 16) {
                    HStack {
                        Text("Select Date")
                        Spacer()
                    }.padding(.leading, 16)
                    
                    //Buttons
                    HStack(spacing: 16) {
                        ForEach(self.topDays) { day in
                            DayButton(day: day, size: geo.size)
                        }
                    }.padding(.horizontal, 16)
                    
                    HStack(spacing: 16) {
                        ForEach(self.middleDays) { day in
                            DayButton(day: day, size: geo.size)
                        }
                    }.padding(.horizontal, 16)
                }
            }
            Spacer()
        }
    }
}

struct DayButton: View {
    
    let day: Day
    let size: CGSize
    
    var body: some View {
        Button(action: {
            
        }, label:  {
            VStack(spacing: 8) {
                Text("MAR")
                    .font(.system(size: 14, weight: .bold))
                    .foregroundColor(.gray)
                Text(day.day)
                Text(day.daysOfWeek)
                    .font(.system(size: 8, weight: .bold))
            }.padding(.vertical, 8)
            
        }).foregroundColor(.black)
            .padding(.horizontal, 2)
            .frame(width: (size.width - 6 * 16) / 5)
            .overlay(
                RoundedRectangle(cornerRadius: 12)
                    .stroke(Color.gray, lineWidth: 1)
        )
    }
}

struct Day: Identifiable {
    let id = UUID()
    let month, day, daysOfWeek: String
}

struct BuyTicketsView_Previews: PreviewProvider {
    static var previews: some View {
        BuyTicketsView()
    }
}
