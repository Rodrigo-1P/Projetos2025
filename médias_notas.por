programa {
  funcao inicio() {
    real nota1, nota2, nota3, media

    escreva("Diga a primeira nota: ")
    leia(nota1)

    escreva("Diga a segunda nota: ")
    leia(nota2)

    escreva("Diga a terceira nota: ")
    leia(nota3)

    media = (nota1+nota2+nota3) / 3

    se (media >= 10){
    escreva(media , " aprovado.")
    }

    se (media <= 10) {
      escreva(media , " reprovado.")
    }
  }
}
