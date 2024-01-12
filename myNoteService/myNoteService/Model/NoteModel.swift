//
//  NoteModel.swift
//  myNoteService
//
//  Created by Markel Juaristi Mendarozketa   on 12/1/24.
//

import Foundation




struct NoteModel: Codable {
    var id: UUID
    var titulo: String
    var email: String
    var urgencia: Urgencia
    var descripcion: String
    var documento: URL? // URL del documento
    var fechaRecordatorio: Date

    init(titulo: String, email: String, urgencia: Urgencia, descripcion: String, documento: URL? = nil, fechaRecordatorio: Date) {
        self.id = UUID()
        self.titulo = titulo
        self.email = email
        self.urgencia = urgencia
        self.descripcion = descripcion
        self.documento = documento
        self.fechaRecordatorio = fechaRecordatorio
    }
    
    enum Urgencia: String, Codable {
        case low = "Baja"
        case medium = "Media"
        case high = "Alta"
    }
}

