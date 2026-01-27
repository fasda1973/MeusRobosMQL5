//+------------------------------------------------------------------+
//|                                             PlotarTextoSinal.mqh |
//|                                           Copyright 2026, FASdA. |
//|                                         https://www.fasda.com.br |
//+------------------------------------------------------------------+
#property copyright "Copyright 2026, FASdA."
#property link      "https://www.fasda.com.br"
//+------------------------------------------------------------------+

void PlotarTextoNaBarra(
   string nome,
   string texto,
   int    shift,     // 0 = candle atual, 1 = anterior
   double preco,
   color  cor
)
{
   datetime tempo = iTime(_Symbol, _Period, shift);

   if(ObjectFind(0, nome) >= 0)
      ObjectDelete(0, nome);

   ObjectCreate(0, nome, OBJ_TEXT, 0, tempo, preco);

   ObjectSetString(0, nome, OBJPROP_TEXT, texto);
   ObjectSetInteger(0, nome, OBJPROP_COLOR, cor);
   ObjectSetInteger(0, nome, OBJPROP_FONTSIZE, 10);
}

