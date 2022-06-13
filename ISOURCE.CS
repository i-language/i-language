// ISOURCE.CS
using System;
using System.Collections.Generic;
using System.Net; 
using System.IO; 
using System.Text; 
class ISOURCE
{
//static String dll1_s="D:\\HARASAWA\\I\\"; 
//static String dll1_s="..\\"; 
//static String dll2_s="_DOWNLOAD\\"; 
//static String dll_s="..\\IXX_DOWNLOAD\\"; 
static String define_s=";M;I;L;O;P;D;F;H";

static String[] file_sx,name_sx;
static String dir_in_s="",dir_out_s="",obfuscate_s="",in_s="",out_s="";
static int i,sjhp,k,kk,sw,SS=0,JJ=1,HH=2,PP=3;
static String[] equal_sx={"=","=","",""};
static String[] hairetu_sx={",","][","][","]["};
static String[] s4x= {"SS","JJ","HH","PP"};
static String[] s42x={"SJ","SJ","HP","HP"};
static String[] s43x={"SP","SJ","SP","SP"};
static String[] s44x={"SJ","JP","JP","JP"};
static String[] sxx={"M","D","F","H","I","L","O","P","X"};//RDBMS９個
static String[] scppx={"b","br","c","co","da","f","fo","i","p","pa","pe","pr","re","s","wr","xm"};
static FileStream FileStream_n, FileStream2_n;
static StreamReader StreamReader_n,StreamReader2_n;  
static FileStream[,] FileStream_nxx=new FileStream[4,9];
static StreamWriter StreamWriter_n;  
static StreamWriter[,] StreamWriter_nxx=new StreamWriter[4,9];  
static int[,] nxx=new int[100,2];static int c=0;
static String iver_s="",net_s="";
static List<String> w1_sa=new List<String>(),w2_sa=new List<String>(),u1_sa=new List<String>(),u2_sa=new List<String>();
public static int Main(string[] arg_sxi)
{
iver_s=arg_sxi[0];net_s=arg_sxi[1];if(arg_sxi.Length>2)define_s=arg_sxi[2];
//net_s=iver_s.Substring(2);
//dir_in_s="..\\"+iver_s+"_SRC";
//dir_in_s="..\\i-language";
dir_in_s=".\\";
dir_out_s="..\\"+iver_s+"_WORK";
//dll_s=dll1_s+iver_s+dll2_s;
//dll_s="..\\i-download";
//if(arg_sxi.Length>1)define_s=arg_sxi[1];
//if(arg_sxi.Length>2)obfuscate_s=arg_sxi[2]; //VER35 ソースの追加中止。
//PACKAGE
FileStream2_n=File.Open(dir_in_s+"\\_PACKAGE.TXT",FileMode.Open,FileAccess.Read,FileShare.ReadWrite);
StreamReader2_n=new StreamReader(FileStream2_n,System.Text.Encoding.Default);
for(;;) 
  {in_s=StreamReader2_n.ReadLine();
   if(null==in_s)break;
   String[] sx=in_s.Split(' ');
   if(sx[0].StartsWith("#")||sx[0].StartsWith("*"))continue;
    w1_sa.Add(sx[0].Trim());
    w2_sa.Add(2>sx.Length?"*":sx[1].Trim());
    u1_sa.Add(3>sx.Length?"!":("="==sx[2].Trim()?sx[0].Trim():sx[2].Trim()));
    u2_sa.Add(2<sx.Length&&"="==sx[2].Trim()?sx[1].Trim():(4>sx.Length?"*":sx[3].Trim()));
   }
StreamReader2_n.Close();FileStream2_n.Close();
try{file_sx=Directory.GetFiles(dir_in_s,"*.SRC");
    name_sx=Directory.GetFiles(dir_in_s,"*.SRC");
    for(i=0;i<name_sx.Length;i++)
       {sjhp=name_sx[i].LastIndexOf('\\');
        if(0<sjhp)name_sx[i]=name_sx[i].Substring(sjhp+1);
        String[] sx=name_sx[i].Split('.');
        name_sx[i]=sx[0];
       }
   }
catch(Exception e_t){Console.WriteLine("DIR{"+dir_in_s+"}error("+e_t.Message+")");return(9);}
try
  {
   for(i=0;i<file_sx.Length;i++)
    {c=0;for(int nn=0;nn<100;nn++)nxx[nn,0]=nxx[nn,1]=-1;
     FileStream_n=File.Open(file_sx[i],FileMode.Open,FileAccess.Read,FileShare.ReadWrite);
     StreamReader_n=new StreamReader(FileStream_n,System.Text.Encoding.Default); 
     sjhp=file_sx[i].LastIndexOf('\\');
     if(0<sjhp)file_sx[i]=file_sx[i].Substring(sjhp+1);
     String[] sx=file_sx[i].Split('.');
     kk=("II_SQL2"==sx[0]?9:1);//II_SQL2のCSは９個のRDBMS分対応
     for(sjhp=0;sjhp<4;sjhp++,kk=1)//(J,0=CS,1=Java,2=H,3=CPP)
       for(k=0;k<kk;k++)
         {FileStream_nxx[sjhp,k]=File.Open(dir_out_s+"\\"+sx[0].ToLower()+(1==kk?"":sxx[k]).ToLower()
         +(0==sjhp?".cs":(1==sjhp?"_l.java":(2==sjhp?".h":".cpp")))
           ,FileMode.Create,FileAccess.Write,FileShare.Read);
          StreamWriter_nxx[sjhp,k]=new StreamWriter(FileStream_nxx[sjhp,k]); //VER16.1

         } 
      int nami=0,nami_old=0,nami_end=0,func=0,func_old=0,kako_end=-1;
      if("ITIME"==sx[0]||"ISRVC"==sx[0]){nami=1;nami_old=1;nami_end=1;} //classを未使用。
      Char quote_c=' ';
      for(;;)
       {in_s=StreamReader_n.ReadLine();c++;
        if(null==in_s)break;//終了
        sw=0;  // 現データ処理用
　　　　for(;;)
          {if(0==sw)
             if(in_s.StartsWith("//COPY $")&&obfuscate_s!="")//COPY開始 
               {sw=1;FileStream2_n=File.Open(dir_in_s+"\\"+in_s.Substring(8)+".src",FileMode.Open,FileAccess.Read,FileShare.ReadWrite);
                StreamReader2_n=new StreamReader(FileStream2_n,System.Text.Encoding.Default);
               } 
           if(0<sw)
             {in_s=StreamReader2_n.ReadLine(); 
              if(null==in_s||2==sw&&in_s=="//COPY *END"){sw=0;StreamReader2_n.Close();FileStream2_n.Close();break;}
              if(1==sw)if(in_s=="//COPY *BEGIN")sw=2;else continue;  
             }
           kk=("II_SQL2"==sx[0]?9:1);
           for(sjhp=0;sjhp<4;sjhp++,kk=1) //(J,0=CS,1=Java,2=H,3=CPP)
              for(k=0;k<kk;k++)
               {out_s=in_s;
                if(out_s.StartsWith("//"+s4x[sjhp]+" "))      out_s=out_s.Substring(("//"+s4x[sjhp]+" ").Length);// //SS,//JJ,//HH,//PP対応 
                else if(out_s.StartsWith("//"+s42x[sjhp]+" "))out_s=out_s.Substring(("//"+s42x[sjhp]+" ").Length);// //SJ,//HP対応 
                else if(out_s.StartsWith("//"+s43x[sjhp]+" "))out_s=out_s.Substring(("//"+s43x[sjhp]+" ").Length);// //SP対応 
                else if(out_s.StartsWith("//"+s44x[sjhp]+" "))out_s=out_s.Substring(("//"+s44x[sjhp]+" ").Length);// //SP対応 
                if(1!=kk||2==sw)
                    {if(out_s.StartsWith("//"+sxx[k]+" "))out_s=out_s.Substring(("//"+sxx[k]+" ").Length);// //M,//O等対応。
                     else if(6<out_s.Length&&sxx[k]==""+out_s[5]&&out_s.StartsWith("//")&&'/'!=out_s[2]&&'/'!=out_s[3]&&'_'==out_s[4]&&' '==out_s[6])
                           out_s=out_s.Substring(("//.._? ").Length);// //??_M,//??_O等対応
                    }
                else if(6<out_s.Length&&(out_s.StartsWith("//"+s4x[sjhp]+"_")||out_s.StartsWith("//"+s44x[sjhp]+"_"))
                      &&' '==out_s[6])out_s=out_s.Substring(("//"+s4x[sjhp]+"_? ").Length); 
               out_s=out_s.Replace("?void?",(2==sw&&obfuscate_s!=""?"void":""));   // ?void?　対応  
               if(SS==sjhp)// CS 対応
                      {out_s=out_s.Replace(".ordinal()","");
//****************( XAMARIN )*****************************************
　　　　　             if(arg_sxi.Length>2&&"XAMARIN"==arg_sxi[2])
                         {out_s=out_s
                          .Replace("Keys ","Keyboard ")
                          .Replace("Keys.","Keyboard.")
                          .Replace("Brush ","System.Drawing.Brush ")
                          .Replace("Font ","System.Drawing.Font ")
                          .Replace(" Font("," System.Drawing.Font(")
                          .Replace("Color ","System.Drawing.Color ")
                          .Replace("Color.","System.Drawing.Color.")
                          .Replace("Point ","System.Drawing.Point ")
                          .Replace(" Point("," System.Drawing.Point(")
                          .Replace("Size ","System.Drawing.Size ")
                          .Replace(" Size("," System.Drawing.Size(");
                         }
//****************( XAMARIN )*****************************************
                       }
//****************( JAVA )*****************************************
               else if(JJ==sjhp)// JAVA 対応
                  {out_s=out_s
                           .Replace("List<char>" ,"List<Character>")
                           .Replace("List<byte>" ,"List<Byte>")
                           .Replace("List<int>"  ,"List<Integer>")
                           .Replace("List<float>","List<Float>")
                           .Replace("List<Brush>","List<Color>")
                           .Replace("List<"      ,"ArrayList<")
                         .Replace("bool ","boolean ")
                         .Replace("Brush ","Color ")
                         .Replace("Pen","BasicStroke")
                         .Replace("new SolidBrush(Color.FromArgb(","(new Color(")
                         .Replace(".Clear()",".clear()")
                         .Replace(".Close()",".close()")
                         .Replace(".Count;",".size();")
                         .Replace(".Insert(",".add(")
                         .Replace(".RemoveAt(",".remove(")
                         .Replace("Color.Black","Color.BLACK")
                         .Replace("Color.White","Color.WHITE")
                         .Replace("DateTime ","java.util.Date ")
                         .Replace("decimal ","BigDecimal ")
                         .Replace("readonly ","final ")
                         .Replace("catch(Exception)","catch(Exception e_dummy_ni)")
                         .Replace("Main(","main(")
                         .Replace("ii_menu_l ","imenu_l ")
                         .Replace(".menu_n." ,".imenu_n.")
                         .Replace("Keys ","int ")
                         .Replace("Keys.Back","KeyEvent.VK_BACK_SPACE")
                         .Replace("Keys.Delete","KeyEvent.VK_DELETE")
                         .Replace("Keys.Down","KeyEvent.VK_DOWN")
                         .Replace("Keys.End","KeyEvent.VK_END")
                         .Replace("Keys.Enter","KeyEvent.VK_ENTER")
                         .Replace("Keys.Escape","KeyEvent.VK_ESCAPE")
                         .Replace("Keys.F1","KeyEvent.VK_F1")
                         .Replace("Keys.F2","KeyEvent.VK_F2")
                         .Replace("Keys.F3","KeyEvent.VK_F3")
                         .Replace("Keys.F4","KeyEvent.VK_F4")
                         .Replace("Keys.F5","KeyEvent.VK_F5")
                         .Replace("Keys.F6","KeyEvent.VK_F6")
                         .Replace("Keys.F7","KeyEvent.VK_F7")
                         .Replace("Keys.F8","KeyEvent.VK_F8")
                         .Replace("Keys.Home","KeyEvent.VK_HOME")
                         .Replace("Keys.Insert","KeyEvent.VK_INSERT")
                         .Replace("Keys.Left","KeyEvent.VK_LEFT")
                         .Replace("Keys.None","KeyEvent.VK_NONCONVERT")
                         .Replace("Keys.PageDown","KeyEvent.VK_PAGE_DOWN")
                         .Replace("Keys.PageUp","KeyEvent.VK_PAGE_UP")
                         .Replace("Keys.Right","KeyEvent.VK_RIGHT")
                         .Replace("Keys.Tab","KeyEvent.VK_TAB")
                         .Replace("Keys.Up","KeyEvent.VK_UP")
                         .Replace("SetDesktopLocation(","setLocation(")
                         .Replace("Brushes.Black","Color.BLACK")
                        // .Replace("ArrayList","ArrayList<Object>")//VER28.1 //VER36.6.0.5
                         .Replace("struct ","class ")//VER31.1
                         .Replace("<String> cmd_a=new ArrayList<Object>","<String> cmd_a=new ArrayList<String>")  //VER36.6.0.3
                         ;  //JAVA の C# と異なる表現を修正。
                 if(out_s.StartsWith("#if ")||out_s.StartsWith("#else")||out_s.StartsWith("#endif")/*||out_s.StartsWith("using ")*/) //VER30.1
                 out_s="//CS//"+out_s;
                }
//****************( C++ )*****************************************
              else 
               if(HH<=sjhp&&0==sw)// H AND CPP
                 {if(HH==sjhp)
                    {quote_c=' ';nami_old=nami;func_old=func;kako_end=-1;
                     for(int ii=0;ii<out_s.Length;ii++)
                       {if('\"'==out_s[ii]||'\''==out_s[ii])
                           if(' '==quote_c)quote_c=out_s[ii];
                           else if(quote_c!=out_s[ii])continue;
                           else if('\\'==out_s[ii-1]&&1<ii&&'\\'!=out_s[ii-2])continue;
                           else quote_c=' ';
                        if(' '!=quote_c)continue;
                        if     ('{'==out_s[ii]){nami++;if(""==obfuscate_s&&-1<nami&&nami<100){nxx[nami,0]=c;nxx[nami,1]=ii;}}
                        else if('}'==out_s[ii])
                              {
                               if(""==obfuscate_s&&-1<nami&&nami<100)
                                 {if(ii!=nxx[nami,1]&&nxx[nami,0]!=c)
                                    System.Console.WriteLine(sx[0]+"{"+c+"="+(ii+1)+","+nxx[nami,0]+"="+(nxx[nami,1]+1)+"}"+(nxx[nami,1]-ii)+"/"+nami);
                                 }
                               nami--;if(1==nami)func=0;
                               if(""==obfuscate_s)if(nami<0)System.Console.WriteLine(sx[0]+"{"+nami+"}"+out_s); 
                              }
                        if('/'==out_s[ii]&&(ii+1)<out_s.Length&&'/'==out_s[ii+1])break;
                        if(1==nami_old&&1==nami)
                          if(')'==out_s[ii])kako_end=ii;
                           else if(' '!=out_s[ii]&&'}'!=out_s[ii]&&'{'!=out_s[ii])kako_end=-1;
                       }
                    } 
                  if(HH==sjhp&&((2<nami||1==func_old&&0!=nami)&&-1==kako_end)||PP==sjhp&&(3>nami_old&&-1==kako_end&&0==func_old||0==nami))
                    {if(!out_s.StartsWith("#")&&!out_s.StartsWith("//"))out_s="//"+s4x[sjhp]+"## "+out_s;}  //対象コメント化
                else 
                   {
                    if(-1!=kako_end)
                      {
                       if(HH==sjhp){func=1;out_s=out_s.Substring(0,kako_end+1)+"; //"+s4x[sjhp]+"#$ "+out_s.Substring(kako_end+1);}
                       else
                         {int jj=kako_end;
                          for(;0<jj;jj--)if('('==out_s[jj])break;
                          for(;0<jj;jj--)if(' '==out_s[jj])break;
                          if(0<jj&&0==nami_end){out_s=out_s.Substring(0,jj+1)+sx[0].ToLower()+"_l::"+out_s.Substring(jj+1);} //クラス名付加
                         }
                     }   
                   } 
                if(!out_s.StartsWith("//"))
                  {
/*
                    int ind=0,start,stop;
                   for(ind=0;;ind++)
                     {if(-1!=(ind=out_s.IndexOf("ArrayList ",ind))) //ArrayList変更
                       {for(stop=start=ind+10;stop<out_s.Length;stop++)
                          {if('='!=out_s[stop]&&','!=out_s[stop]&&')'!=out_s[stop]&&';'!=out_s[stop])continue;
                           string s=out_s.Substring(start,stop-start);//名前セット
                           for(int iiii=0;iiii<scppx.Length;iiii++)
                             if((s.Trim()).StartsWith(scppx[iiii]+"_"))　　//ArrayListをクラス化判定
                               {out_s=out_s.Replace("ArrayList "+s,scppx[iiii]+"_l* "+s);
                                break;
                               }
                           break;
                          }
                       }
                      else break;
                     }
                   for(ind=0;;ind++)
                     {if(-1!=(ind=out_s.IndexOf("=new ArrayList()",ind))) //=new ArrayList()変更
                        {for(start=stop=ind-1;start>0;start--)
                           {if('='!=out_s[start]&&','!=out_s[start]&&')'!=out_s[start]&&';'!=out_s[start]&&' '!=out_s[start])continue;
                            string s=out_s.Substring(++start,stop-start+1);//名前セット
                          //  Console.WriteLine("s="+s);
                            for(int iiii=0;iiii<scppx.Length;iiii++)
                               if(s.StartsWith(scppx[iiii]+"_"))　　//=new ArrayList()をクラス化判定
                                 {out_s=out_s.Replace(s+"=new ArrayList()",s+"=new "+scppx[iiii]+"_l()");
                                  break;
                                 }
                            break;
                           }
                        }
                      else break;
                     }
                   
*/
                   out_s=out_s
                           .Replace("byte ","GLbyte ") 
                           .Replace("List<byte>()","b_l()") 
                           .Replace("List<char>()","c_l()") 
                           .Replace("List<ii_data_l>()","da_l()") 
                           .Replace("List<float>()","f_l()") 
                           .Replace("List<int>()","i_l()") 
                           .Replace("List<ii_print_l>()","p_l()") 
                           .Replace("List<ii_paint_l>()","pa_l()") 
                           .Replace("List<Pen>()","pe_l()") 
                           .Replace("List<ii_program_l>()","pr_l()") 
                           .Replace("List<ii_read_l>()","re_l()") 
                           .Replace("List<String>()","s_l()") 
                           .Replace("List<ii_write_l>()","wr_l()") 
                           .Replace("List<ii_xml_json_l>()","xm_l()") 

                           .Replace("List<byte>","b_l*") 
                           .Replace("List<char>","c_l*") 
                           .Replace("List<ii_data_l>","da_l*") 
                           .Replace("List<float>","f_l*") 
                           .Replace("List<int>","i_l*") 
                           .Replace("List<ii_print_l>","p_l*") 
                           .Replace("List<ii_paint_l>","pa_l*") 
                           .Replace("List<Pen>","pe_l*") 
                           .Replace("List<ii_program_l>","pr_l*") 
                           .Replace("List<ii_read_l>","re_l*") 
                           .Replace("List<String>","s_l*") 
                           .Replace("List<ii_write_l>","wr_l*") 
                           .Replace("List<ii_xml_json_l>","xm_l*") 

                           .Replace(".Close()",".close()")
                           .Replace  ("ii_menu_l "                 ,"imenu_l ")
                           .Replace  (".menu_n."                   ,".imenu_n.")
                           .Replace  ("_ni."                       ,"_ni->")
                           .Replace  ("_n."                        ,"_n->")
                           .Replace  ("_p."                        ,"_p->")
                           .Replace  (")."                         ,")->")
                           .Replace  ("]."                         ,"]->")
                               .Replace("String[]  "       ,"String ") //(C++対抗空白２個)//
                             .Replace  ("int[]  "          ,"int ") //(C++対抗空白２個)//
                               .Replace("char[]  "         ,"char ") //(C++対抗空白２個)//
                               .Replace("byte[]  "         ,"byte ") //(C++対抗空白２個)//
                               .Replace("String[]"         ,"QVector<QString>")
                               .Replace("char[]"           ,"QVector<QChar>")
                               .Replace("byte[]"           ,"QVector<byte>")
                               .Replace("int[]"            ,"QVector<int>")
                          .Replace   ("=new String["     ,"[")
                          .Replace   ("=new char["       ,"[")
                          .Replace   ("=new int["        ,"[")
                          .Replace   ("=new byte["       ,"[")
                          .Replace   ("=new ArrayList()" ,"")
                             .Replace(" null "           ," nullptr ")
                             .Replace("Brush "           ,"QBrush ")
                             .Replace("char "            ,"QChar ")
                             .Replace("Color "           ,"QColor ")
                             .Replace("Font "            ,"QFont ")
                             .Replace("Object "          ,"QObject ")
                             .Replace("DateTime "        ,"QDateTime ")
                             .Replace("Pen "             ,"QPen ")
                             .Replace("Point "           ,"QPoint ")
                             .Replace("String "          ,"QString ")
                             .Replace("Thread "          ,"QThread ")
                             .Replace("(Socket "          ,"(QTcpSocket ")
                             .Replace("Exception"        ,"QException")
                         .Replace("SetDesktopLocation(","move(")
                          .Replace   ("Keys.None"        ,"0")
                          .Replace   ("Keys."            ,"Qt::Key_")
                          .Replace   ("Qt::Key_Back"        ,"Qt::Key_Backspace")
                          .Replace   ("Qt::Key_Backspacetab","Qt::Key_Backtab")
                          .Replace   ("Color.B"          ,"Qt::b")
                          .Replace   ("Color.W"          ,"Qt::w")
                          .Replace   ("Brushes.B"        ,"Qt::b")
                          .Replace   ("Brushes.W"        ,"Qt::w")
                          .Replace   ("Graphics "        ,"QPainter* ")
                          .Replace   ("(Graphics_nn"     ,"(&Graphics_nn")
                          .Replace   ("decimal "         ,"double ")
                          .Replace   ("Keys "            ,"int ")
                          .Replace   ("readonly "        ," ")
                            .Replace(" "+sx[0].ToLower()+"_l::main("," main(")
                            .Replace(" "+sx[0].ToLower()+"_l::main("," main(")
                           ;
                  for(int ii=0;ii<name_sx.Length;ii++)
                     {out_s=out_s.Replace(name_sx[ii].ToLower()+"_l ",name_sx[ii].ToLower()+"_l *");}
                  if(3==sjhp)out_s=out_s.Replace("public ","");
                  else
                    {out_s=out_s.Replace("public ","public: ");
                     out_s=out_s.Replace("public: class","class ");
                    }
                 }
              }
               if(!out_s.StartsWith("//"))out_s=out_s.Replace("?,?",hairetu_sx[sjhp]); //２次元配列対応。"？,?"
               if(0==nami&&HH==sjhp&&"}"==out_s)out_s="};";
               out_s=out_s.Replace("?=?",equal_sx[sjhp]);     // "?=?"対応
               StreamWriter_nxx[sjhp,k].WriteLine(out_s);
             }
            if(0==sw)break; 
        }
     }
     kk=("II_SQL2"==sx[0]?9:1);
     for(sjhp=0;sjhp<4;sjhp++,kk=1)for(k=0;k<kk;k++)
        {StreamWriter_nxx[sjhp,k].Close();FileStream_nxx[sjhp,k].Close(); 
        }
     StreamReader_n.Close();FileStream_n.Close();
    if(nami_end!=nami)System.Console.WriteLine(sx[0]+"{"+nami+"}"); 
    }
     for(sjhp=2;sjhp<4;sjhp++)//ii_include_c?.hファイル作成。
      {FileStream_n=File.Open(dir_out_s+"\\ii_include_"+s4x[sjhp].ToLower()+".h"
           ,FileMode.Create,FileAccess.Write,FileShare.Read);
       StreamWriter_n=new StreamWriter(FileStream_n);
       write_v("#ifndef II_INCLUDE_"+s4x[sjhp]+"_H");
       write_v("#define II_INCLUDE_"+s4x[sjhp]+"_H");
       write_v("#include \"ii_include.h\"");
       for(i=0;i<name_sx.Length;i++)
          {if(!name_sx[i].StartsWith("II_"))continue;
           if(PP==sjhp)
             {write_v("#ifndef "+name_sx[i]+"_H");
              write_v("#define "+name_sx[i]+"_H");
             } 
           write_v((HH==sjhp?"class ":"#include \"")+name_sx[i].ToLower()+(HH==sjhp?"_l;":".h\""));         
           if(PP==sjhp)write_v("#endif // "+name_sx[i]+"_H");
          }
       write_v("#include \"ii_include2.h\"");
       write_v("#endif // II_INCLUDE_"+s4x[sjhp]+"_H");
       StreamWriter_n.Close();FileStream_n.Close(); 
   }
  pro_v("W","C");
  pro_v("U","C"); 
  pro_v("W","D");
  pro_v("U","D"); 
  return(0);
  }
catch(Exception e_t){Console.WriteLine(e_t.Message);return(9);}
}
static void pro2_v(String s_si)
{for(sjhp=0;sjhp<name_sx.Length;sjhp++)
   {if(name_sx[sjhp].StartsWith("II_"))write_v("    "+name_sx[sjhp].ToLower()+"."+s_si+" \\");
  }
}
static String wu_s="";
static String cd_s="";
static void pro_v(String wu_si,String cd_si)// ?.proファイル作成。
{wu_s=wu_si;cd_s=cd_si;
for(i=0;i<name_sx.Length;i++)
   {if(name_sx[i].StartsWith("II_"))continue;
    String def_s="",prog_s="";
//    if(name_sx[i].StartsWith("IX")){def_s=name_sx[i].Substring(2);prog_s=iver_s+def_s;}
//    else                           {def_s=name_sx[i].Substring(1);prog_s=name_sx[i];}
      def_s=name_sx[i];prog_s=name_sx[i]; //VER36.6.0.3
     FileStream_n=File.Open(dir_out_s+"\\"+prog_s+wu_si+cd_si+("C"==cd_si?".pro":".csproj")
         ,FileMode.Create,FileAccess.Write,FileShare.Read);
     StreamWriter_n=new StreamWriter(FileStream_n);
     if("C"==cd_si) //C++(.pro)
       {
        write_v("QT       += core \\");
        if(def_s.StartsWith("IME")||def_s.StartsWith("IPR")||def_s.StartsWith("ICH"))
          {write_v("            widgets \\");}
        write_v("            network \\");
        write_v("            printsupport \\");
//        write_v("            serialport \\"); //VER36.1
        write_v("            sql");
        write_v("TARGET = "+prog_s+wu_si+"C");
        write_v("TEMPLATE = app");
        write_v("DEFINES += \\");
        write_v("    CP \\");
        if("W"==wu_si)write_v("    "+wu_si+" \\");
        write_v("    "+def_s);
        if(def_s.StartsWith("IME")||def_s.StartsWith("IPR")||def_s.StartsWith("ICH"))
          {write_v("CONFIG += c++11");}
        else
          {write_v("CONFIG += c++11 \\");
           write_v("          console");
          }
        write_v("SOURCES += \\");
        pro2_v("cpp");
        write_v("    "+name_sx[i].ToLower()+".cpp");
        write_v("HEADERS += \\");
        pro2_v("h");
        write_v("    ii_include.h \\");
        write_v("    ii_include2.h \\");
        write_v("    ii_include_hh.h \\");
        write_v("    ii_include_pp.h  \\");
        write_v("    "+name_sx[i].ToLower()+".h");

 　     write_v("qnx: target.path = /tmp/$${TARGET}/bin");
        write_v("else: unix:!android: target.path = /opt/$${TARGET}/bin");
        write_v("!isEmpty(target.path): INSTALLS += target");
        if("IMENU"==def_s)
          {write_v("DISTFILES += \\");
           write_v("    I_MENU.ICO");
           write_v("RC_ICONS = I_MENU.ICO");
          }
       }
      else //C#(.cproj)
       {
        /*
        if(def_s.StartsWith("IME")||def_s.StartsWith("IP")||def_s.StartsWith("ICH"))
             write_v("<Project Sdk=\"Microsoft.NET.Sdk.WindowsDesktop\">");
        else
        */
        write_v("<Project Sdk=\"Microsoft.NET.Sdk\">");
        write_v("  <PropertyGroup>");
        write_v("    <RuntimeIdentifier>"+("W"==wu_si?"win":"linux")+"-x64</RuntimeIdentifier>");
        write_v("    <DefineConstants>"+wu_si+";"+def_s+";DOTNET;ODP"+define_s+(def_s.StartsWith("ITE")?";XAMARIN":"")+"</DefineConstants>");
        write_v("    <EnableDefaultItems>false</EnableDefaultItems>");
        if(def_s.StartsWith("IME")||def_s.StartsWith("IP")||def_s.StartsWith("ICH"))
          {write_v("    <UseWindowsForms>true</UseWindowsForms>");
           if(!def_s.StartsWith("ITI"))write_v("    <OutputType>WinExe</OutputType>");
//         write_v("    <TargetFramework>net"+net_s+".0-windows</TargetFramework>");
           write_v("    <TargetFramework>net"+net_s+"-windows</TargetFramework>");
          } 
        else 
          {write_v("    <OutputType>Exe</OutputType>");
 //          write_v("    <TargetFramework>net"+net_s+".0</TargetFramework>");
          write_v("    <TargetFramework>net"+net_s+"</TargetFramework>");
          }
        if(def_s.StartsWith("ITI"))write_v("    <OutputType>Exe</OutputType>");
//         write_v("    <TargetFramework>netcoreapp5.0</TargetFramework>");
//        write_v("    <TargetFramework>net5.0"+("W"==wu_si?"-windows":"")+"</TargetFramework>");
////        write_v("    <PublishSingleFile>true</PublishSingleFile>");
////      write_v("    <PublishTrimmed>true</PublishTrimmed>");
        if(def_s.StartsWith("IME"))
           write_v("    <ApplicationIcon>I_MENU.ICO</ApplicationIcon>");
        if(def_s.StartsWith("IRO"))
           write_v("    <ApplicationManifest>IROOT.EXE.MANIFEST</ApplicationManifest>");
        write_v("  </PropertyGroup>");
        write_v("  <ItemGroup>");
        write_v("    <Compile Include=\""+name_sx[i].ToLower()+".cs\" />");
        write_v("    <Compile Include=\"ii_*.cs\" />");
 //       if("W"==wu_si)write_v("    <SupportedPlatform Include=\"windows\" />");
        if(def_s.StartsWith("IME"))
          {write_v("    <Content Include=\"I_MENU.ICO\" />");
           ////write_v("    <Compile Include=\""+name_sx[i].ToLower()+"_l.resx\" />");
           ////write_v("    <Compile Update=\""+name_sx[i].ToLower()+".cs\" DependentUpon=\""+name_sx[i].ToLower()+"_l.resx\" AutoGen=\"True\" DesignTime=\"True\" />");
           ////write_v("    <EmbeddedResource Update=\""+name_sx[i].ToLower()+"_l.resx\" Generator=\"ResXFileCodeGenerator\" LastGenOutput=\""+name_sx[i].ToLower()+".cs\" />");
           ////write_v("    <EmbeddedResource Include=\""+name_sx[i].ToLower()+"_l.resx\" />");
           ////write_v("    <Res Include=\""+name_sx[i].ToLower()+"_l.resources\" >");
           ////write_v("    <Culture>fr</Culture>");
           ////write_v("    </Res>");
          }
        if(def_s.StartsWith("IRO"))
           write_v("    <None Include=\"IROOT.EXE.MANIFEST\" />");
        for(int ii=0;w1_sa.Count>ii;ii++)
          if("W"==wu_s){if("!"!=w1_sa[ii])write_package_v(w1_sa[ii],w2_sa[ii]);}
          else         {if("!"!=u1_sa[ii])write_package_v(u1_sa[ii],u2_sa[ii]);}
        if(def_s.StartsWith("ITE")){write_package_v("Xamarin.Forms","*");write_package_v("System.Drawing.Common","*");
                                   write_package_v("Microsoft.Maui","6.0.100-preview.5.794");
                                   write_package_v("CommunityToolkit.Maui","*");
                                  }
/*
        if(def_s.StartsWith("IME")||def_s.StartsWith("IT"))
          {write_package_v("System.IO.Ports","*");
           //write_v("    <PackageReference Include=\"System.IO.Ports\" Version=\"4.7.0\" />");
           write_package_v("System.Management","*");
           //write_v("    <PackageReference Include=\"System.Management\" Version=\"4.7.0\" />");
           write_package_v();
          } 

           //write_v("    <PackageReference Include=\"System.Configuration\" Version=\"*\" />");
////         if(def_s.StartsWith("ITE"))
////           write_v("    <PackageReference Include=\"System.Configuration.Install\" Version=\"*\" />");
          if(def_s.StartsWith("ISR")&&"W"==wu_si)
            {write_package_v("Microsoft.Extensions.Hosting","*");
             ////write_v("    <PackageReference Include=\"Microsoft.Extensions.DependencyInjection\" Version=\"*\" />"); 
             write_package_v("System.ServiceProcess.ServiceController","*");
             //write_v("    <PackageReference Include=\"System.ServiceProcess.ServiceController\" Version=\"4.7.0\" />");
            //////  write_v("    <PackageReference Include=\"System.ServiceBase\" Version=\"*\" />");
            ////// write_v("    <PackageReference Include=\"System.ServiceProcess\" Version=\"*\" />");
            ////write_v("    <PackageReference Include=\"System.Configuration.Install\" Version=\"*\" />");
            } 
          }
        if(def_s.StartsWith("ICH"))
           write_v("    <PackageReference Include=\"System.Windows.Forms.DataVisualization\" Version=\"1.0.0-prerelease.20110.1\" />");
        if(def_s.StartsWith("IME")||def_s.StartsWith("IT"))
          {write_package_v("System.Data.SqlClient","*");
           //write_v("    <PackageReference Include=\"System.Data.SqlClient\" Version=\"4.8.1\" />");
           write_package_v("System.Data.Odbc","*");
           //write_v("    <PackageReference Include=\"System.Data.Odbc\" Version=\"4.7.0\" />");
          //// if(-1!=define_s.IndexOf("D"))write_v("    <Reference Include=\"FirebirdSql.Data.FirebirdClient\"><HintPath>"+dll_s+"FirebirdSql.Data.FirebirdClient.dll</HintPath></Reference>");
          //// if(-1!=define_s.IndexOf("F"))write_v("    <Reference Include=\"Fujitsu.Symfoware\"><HintPath>"+dll_s+"Fujitsu.Symfoware.dll</HintPath></Reference>");
          //// if(-1!=define_s.IndexOf("H"))
          ////   {write_v("    <Reference Include=\"pddndp20x\"><HintPath>"+dll_s+"pddndp20x.dll</HintPath></Reference>");
          ////    write_v("    <Reference Include=\"pddndpcore20x\"><HintPath>"+dll_s+"pddndpcore20x.dll</HintPath></Reference>");
          ////   }
          }
*/
        write_v("  </ItemGroup>");
//        if(def_s.StartsWith("ITE"))
//          write_v("     <Import Project=\"$(MSBuildExtensionsPath)\\Microsoft\\WindowsXaml\\v$(VisualStudioVersion)\\Microsoft.Windows.UI.Xaml.CSharp.targets\" />");

        write_v("</Project>");
       } 
       StreamWriter_n.Close();FileStream_n.Close(); 
   }
} 
//static void write_package_v(){for(int ii=0;w_sa.Count>ii;ii++)write_package_v(("W"==wu_s?w_sa[ii]:u_sa[ii]),"*");}
//static void write_package_v(String si)
//{int ii=0;
//for(;w_sa.Count>ii;ii++)if(w_sa[ii]==si)break;
//write_package_v(si,(w_sa.Count==ii?"*":u_sa[ii]));
//}
static void write_package_v(String si,String s2i){write_v("    <PackageReference Include=\""+si+"\" Version=\""+s2i+"\" />");}
static void write_v(String s_si)
{if("U"==wu_s&&"D"==cd_s)s_si=s_si.Replace("\\","/");
StreamWriter_n.WriteLine(s_si);
}
}