programa {
  inclua biblioteca Tipos --> t
  funcao inicio() {
    inteiro numGrelha = 9, posicaoEscolhida, jogadas = 0
    caracter grelha[numGrelha]
    logico tabuleiroCheio=falso, alguemGanhou=falso, jogoTerminou=falso
    caracter jogadorAtual = 'X'

    /**
     * colocar dados na grelha / tabuleiro
     */
    para(inteiro i=0; i<numGrelha; i++) {
      grelha[i] = t.inteiro_para_caracter(i)
    }


    faca {
      /** inicio do tabuleiro */
      escreva("|")
      para(inteiro i=0; i<numGrelha; i++) {
        escreva(' ')
        escreva(grelha[i])
        escreva(" |")
        se (i == 2) {
          escreva("\n")
          escreva("-------------")
          escreva("\n")
          escreva("|")
        } senao se (i == 5) {
          escreva("\n")
          escreva("-------------")
          escreva("\n")
          escreva("|")
          /**Fim da mostra do tabuleiro */
      }
    }
    escreva("\nDiga a posição em que quer colocar a peça ", jogadorAtual, " : ")
    leia(posicaoEscolhida)
    jogadas = jogadas + 1 

    // verificar se pode jogar ou não naquela posição
    se ( posicaoEscolhida >= 0){
      se (posicaoEscolhida <= 8){
        se(grelha[posicaoEscolhida] == posicaoEscolhida)
        grelha[posicaoEscolhida] = jogadorAtual

          // se jogou .. verificar se ganhou ...
          se(grelha[0] == grelha[1] e grelha[1] == grelha[2]){
            escreva("Parabéns " , jogadorAtual , " Ganhaste")
            jogoTerminou = verdadeiro
          } senao se(grelha[3] == grelha[4] e grelha[4] == grelha[5]){
            escreva("Parabéns " , jogadorAtual , " Ganhaste")
            jogoTerminou = verdadeiro       
          } senao se(grelha[6] == grelha[7] e grelha[7] == grelha[8]){
            escreva("Parabéns " , jogadorAtual , " Ganhaste \n")
            jogoTerminou = verdadeiro      
          } senao se(grelha[0] == grelha[3] e grelha[3] == grelha[6]){
            escreva("Parabéns " , jogadorAtual , " Ganhaste \n")
            jogoTerminou = verdadeiro        
          } senao se(grelha[1] == grelha[4] e grelha[4] == grelha[7]){
            escreva("Parabéns " , jogadorAtual , " Ganhaste \n")
            jogoTerminou = verdadeiro      
          } senao se(grelha[2] == grelha[5] e grelha[5] == grelha[8]){
            escreva("Parabéns " , jogadorAtual , " Ganhaste \n")
            jogoTerminou = verdadeiro      
          } senao se(grelha[0] == grelha[4] e grelha[4] == grelha[8]){
            escreva("Parabéns " , jogadorAtual , " Ganhaste \n")
            jogoTerminou = verdadeiro      
          } senao se(grelha[2] == grelha[4] e grelha[4] == grelha[6]){
            escreva("Parabéns " , jogadorAtual , " Ganhaste \n")
            jogoTerminou = verdadeiro      
          }                                                                                                          
          //                       se não ganhou .. ~
          //                               verificar se o tabuleiro está cheio
          se(jogadas == 9){
            escreva("Tabela cheia \n")
            jogoTerminou = verdadeiro
          }
          //                               se não está cheio .. mudar o jogador 
          se(jogadorAtual == 'X') {
            jogadorAtual = 'O'
          }  senao {
              jogadorAtual = 'X'
          } 
        }           
      }
    } enquanto (jogoTerminou == falso)
  }
}
