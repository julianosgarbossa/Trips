//
//  ViagemTableViewCell.swift
//  Trips
//
//  Created by Juliano Sgarbossa on 26/05/25.
//

import UIKit

class ViagemTableViewCell: UITableViewCell {

    @IBOutlet weak var backgroundViewCell: UIView!
    @IBOutlet weak var viagemImage: UIImageView!
    @IBOutlet weak var tituloViagemLabel: UILabel!
    @IBOutlet weak var subtituloViagemLabel: UILabel!
    @IBOutlet weak var diariaViagemLabel: UILabel!
    @IBOutlet weak var precoSemDescontoLabel: UILabel!
    @IBOutlet weak var precoViagemLabel: UILabel!
    @IBOutlet weak var statusCancelamentoViagemLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configuraCelula(viagem: Viagem?) {
        self.viagemImage.image = UIImage(named: viagem?.asset ?? "")
        
        self.tituloViagemLabel.text = viagem?.titulo
        
        self.subtituloViagemLabel.text = viagem?.subtitulo
        
        if let numeroDeDias = viagem?.diaria,
           let numeroDeHospedes = viagem?.hospedes {
            let diarias = numeroDeDias == 1 ? "Diária" : "Diárias"
            let hospedes = numeroDeHospedes == 1 ? "Pessoa" : "Pessoas"
            
            self.diariaViagemLabel.text = "\(numeroDeDias) \(diarias) - \(numeroDeHospedes) \(hospedes)"
        }
            
        let atributoString: NSMutableAttributedString = NSMutableAttributedString(string: "R$ \(viagem?.precoSemDesconto ?? 0.00)")
        atributoString.addAttribute(NSAttributedString.Key.strikethroughStyle, value: 1, range: NSMakeRange(0, atributoString.length))
        self.precoSemDescontoLabel.attributedText = atributoString
            
        self.precoViagemLabel.text = "R$ \(viagem?.preco ?? 0.00)"
            
        self.statusCancelamentoViagemLabel.text = "\(viagem?.cancelamento ?? "")"
        
        DispatchQueue.main.async {
            self.backgroundViewCell.addSombra()
        }
    }
    
}
