//
//  GreetingInteractor.swift
//  VIPERExemple
//
//  Created by Вячеслав Квашнин on 10.07.2022.
//

protocol GreetingInteractorInputProtocol: AnyObject {
    init(presenter: GreetingInteractorOutputProtocol)
    func provideGreetingData()
}

protocol GreetingInteractorOutputProtocol: AnyObject {
    func receiveGreetingData(greetingData: GreetingData)
}
