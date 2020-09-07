import UIKit

class Categoria {

    var nome: String

    init(nome: String) {
        self.nome = nome
    }

}


class Produto {

    var nome: String
    var preco: Float
    var categoria: [Categoria]
    var un: String
    var quantidade: Int
    var marca: String

    init(nome: String, preco: Float, categoria: [Categoria], un: String, quantidade: Int, marca: String) {

        self.nome = nome
        self.preco = preco
        self.categoria = categoria
        self.un =  un
        self.quantidade = quantidade
        self.marca = marca
    }

    func getNome() -> String {
        return self.nome
    }

    func getPreco() -> Float {
        return self.preco
    }

    func getCategoria() -> [Categoria] {
        return self.categoria
    }

    func getUn() -> String {
        return self.un
    }

    func getQuantidade() -> Int {
        return self.quantidade
    }

    func getMarca() -> String {
        return self.marca
    }

    func setNome(nome: String) {
        self.nome = nome
    }

    func setPreco(preco: Float) {
        self.preco = preco
    }

    func setCategoria(categoria: [Categoria]) {
        self.categoria = []
        self.categoria.append(contentsOf: categoria)
    }

    func setUn(unidade: String) {
        self.un = unidade
    }

    func setQuantidade(qtd: Int) {
        self.quantidade = qtd
    }

    func setMarca(marca: String) {
        self.marca = marca
    }

    func getNomePreco() {
        print("Nome: \(self.nome) \n Preço: \(self.preco) ")
    }

}

class Pessoa {

    var nome: String
    var dataNascimento: Date
    var email: String
    var cpf: String
    var endereco: String
    var cidade: String
    var uf: String
    var ativo: Bool
    
    init(nome: String, dataNascimento: Date, email: String, cpf: String, endereco: String, cidade: String, uf: String, ativo: Bool) {

        self.nome = nome
        self.dataNascimento = dataNascimento
        self.email = email
        self.cpf = cpf
        self.endereco = endereco
        self.cidade = cidade
        self.uf = uf
        self.ativo = ativo
    }

    func getNome() -> String { return self.nome}

    func getDataNascimento() -> Date { return self.dataNascimento}

    func getEmail() -> String { return self.email}

    func getCPF() -> String { return self.cpf}

    func getEndereco() -> String { return self.endereco}

    func getCidade() -> String { return self.cidade}

    func getUF() -> String { return self.uf }

    func getAtivo() -> Bool { return self.ativo }

    
    func setNome(nome: String) { self.nome = nome}

    func setDataNascimento(data: Date) { self.dataNascimento = data}

    func setEmail(email: String) { self.email = email}

    func setCPF(cpf: String) { self.cpf = cpf }

    func setEndereco(endereco: String)  { self.endereco = endereco  }

    func setCidade(cidade: String) { self.cidade = cidade  }

    func setUF(uf: String) { self.uf = uf }

    func setAtivo(ativo: Bool) { self.ativo = ativo }

}

class Cliente: Pessoa {

    var dataUltimaCompra: Date
    var planoFidelidade: Bool
    var clientePrime: Bool
    var usaCaixaPreferencial: Bool
    var usaDelivery: Bool
    var dataCadastro: Date

    init(nome: String, dataNascimento: Date, email: String, cpf: String, endereco: String, cidade: String, uf: String, ativo: Bool, dataUltimaCompra: Date, planoFidelidade: Bool, clientePrime: Bool, usaCaixaPreferencial: Bool, usaDelivery: Bool, dataCadastro: Date  ) {

        self.dataUltimaCompra = dataUltimaCompra
        self.planoFidelidade = planoFidelidade
        self.clientePrime = clientePrime
        self.usaCaixaPreferencial = usaCaixaPreferencial
        self.usaDelivery = usaDelivery
        self.dataCadastro = dataCadastro
        super.init(nome: nome, dataNascimento: dataNascimento, email: email, cpf: cpf, endereco: endereco, cidade: cidade, uf: uf, ativo: ativo)

    }

    func getDataUltimaCompra() -> Date { return self.dataUltimaCompra }

    func getPlanoFidelidade() -> Bool { return self.planoFidelidade }

    func getClientePrime() -> Bool { return self.clientePrime }

    func getUsaCaixaPreferencial() -> Bool { return self.usaCaixaPreferencial }

    func getUsaDelivery() -> Bool { return self.usaDelivery }

    func getDataCadastro() -> Date { return self.dataCadastro }
    

    func setDataUltimaCompra(data: Date) { self.dataUltimaCompra = data }

    func setPlanoFidelidade(fidelidade: Bool)  { self.planoFidelidade = fidelidade }

    func setClientePrime(prime: Bool) { self.clientePrime = prime }

    func setUsaCaixaPreferencial(preferencial: Bool) { self.usaCaixaPreferencial = preferencial }

    func setUsaDelivery(delivery: Bool)  { self.usaDelivery = delivery }

    func setDataCadastro(data: Date) { self.dataCadastro = data }

}



class Funcionario: Pessoa {

    var dataAdmissao: Date
    var dataDemissao: Date?
    var planoSaude: Bool
    var dependente: Bool
    var cargo: String
    var salario: Float

    init(nome: String, dataNascimento: Date, email: String, cpf: String, endereco: String, cidade: String, uf: String, ativo: Bool, dataAdmissao: Date, dataDemissao: Date?, planoSaude: Bool, dependente: Bool, cargo: String, salario: Float ) {

        self.dataAdmissao = dataAdmissao
        self.dataDemissao = dataDemissao
        self.planoSaude = planoSaude
        self.dependente = dependente
        self.cargo = cargo
        self.salario = salario

        super.init(nome: nome, dataNascimento: dataNascimento, email: email, cpf: cpf, endereco: endereco, cidade: cidade, uf: uf, ativo: ativo)

    }

    func getDataAdmissao() -> Date { return self.dataAdmissao }

    func getDataDemissao() -> Date? { return self.dataDemissao }

    func getPlanoSaude() -> Bool { return self.planoSaude }

    func getDependente() -> Bool { return self.dependente }

    func getCargo() -> String { return self.cargo }

    func getSalario() -> Float { return self.salario }

    
    func setDataAdmissao(data: Date) { self.dataAdmissao = data}

    func setDataDemissao(data: Date) { self.dataDemissao = data }

    func setPlanoSaude(plano: Bool) { self.planoSaude = plano }

    func setDependente(dependente: Bool) { self.dependente  = dependente }

    func setCargo(cargo: String) { self.cargo = cargo }

    func setSalario(salario: Float)  { self.salario = salario }

    

}



//Examples

var cat = Categoria(nome: "Bebida")

var produto1 = Produto(nome: "Coca", preco: 2.55, categoria: [cat], un: "un", quantidade: 15, marca: "Coca-Cola")

produto1.getCategoria()



var cliente_01 = Cliente(nome: "José", dataNascimento:  Date(), email: "jc@gmail", cpf: "123124123-3", endereco: "Rua x", cidade: "Pirassununga", uf: "SP", ativo: true, dataUltimaCompra: Date(), planoFidelidade: true, clientePrime: true, usaCaixaPreferencial: true, usaDelivery: false, dataCadastro: Date())

print("Cliente: \(cliente_01.getNome()) \nE-mail: \(cliente_01.getEmail()) \nPrime: \(cliente_01.getClientePrime())" )



var funcionarioAroldo = Funcionario(nome: "Aroldo", dataNascimento:  Date(), email: "aroldo@gmail", cpf: "12345665", endereco: "Rua xz", cidade: "São Paulo", uf: "SP", ativo: true, dataAdmissao: Date(), dataDemissao: nil, planoSaude: true, dependente: false, cargo: "Repositor", salario: 1.500)

print("Funcionario: \(funcionarioAroldo.getNome()) \nCargo: \(funcionarioAroldo.cargo)")

