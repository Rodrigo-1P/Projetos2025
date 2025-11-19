programa {
  funcao inicio() {
    inteiro Y, X, RES

    escreva("Escreve um número: ")
    leia(X)

    escreva("Escreve outro número: ")
    leia(Y)

    se(X > Y){
      RES = X - Y
      escreva("A subtração dá:" , RES)
    } 
    senao{
      RES = Y - X
      escreva("A subtração dá:" , RES)
    }
  }
}
