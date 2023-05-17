//
//  AuthenticationManager.swift
//  IA3
//
//  Created by Ashton Price on 15/5/2023.
//

import Foundation
import FirebaseAuth

struct AuthDataResultModel {
    let uid:String
    let email:String
    
    init(uid: String, email: String) {
        self.uid = uid
        self.email = email
    }
    init(user:User){
        self.uid = user.uid
        self.email = user.email!
    }
}

final class AuthenticationManager {
    //singleton - creating a single global class of AuthenticationManager
    //not the best method in a larger app
    //This creates the singleton
    static let shared = AuthenticationManager()
    
    private init(){
        
    }
    
    //FIXME: fix this after creating the user
        func getAuthenticatedUser() throws -> AuthDataResultModel {
            guard let user = Auth.auth().currentUser else {
                throw URLError(.badServerResponse)
            }
            return AuthDataResultModel(user:user)
    }
    
    @discardableResult
    private func createUser(email: String, password:String) async throws -> AuthDataResultModel {
        let authDataModel = try await Auth.auth().createUser(withEmail: email, password: password)
        return AuthDataResultModel(user: authDataModel.user)
    }
    
    @discardableResult
    private func signInUser(email: String, password:String) async throws -> AuthDataResultModel {
        let authDataModel = try await Auth.auth().signIn(withEmail: email, password: password)
        return AuthDataResultModel(user: authDataModel.user)
    }
    
    func resetPassword(email:String) async throws {
        try await Auth.auth().sendPasswordReset(withEmail: email)
    }
    
    func updatePassword(password:String) async throws {
        guard let user = Auth.auth().currentUser else {
            throw URLError(.badServerResponse)
        }
        try await user.updatePassword(to: password)
    }
    
    func signOut() throws {
        try Auth.auth().signOut()
    }
    
    func deleteUser() async throws {
        guard let user = Auth.auth().currentUser else {
            throw URLError(.badURL)
        }
        try await user.delete()
        
    }
    
}
