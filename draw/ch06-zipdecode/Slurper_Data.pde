//Data Input

class Slurper_Data implements Runnable {

  Slurper_Data() {
    Thread thread = new Thread(this);
    thread.start();
  }

  public void run() {
      
      
      //String[] lines=loadStrings("data.csv");
      
      String poname;
      int demand;
      int supply;
      
          
      String poname={'GangNam','GandDong','GangBuk','GangSeo','KwanAk','KwangJin','GuRp','GumCheon','Etc','NoWon','DoBong','DongJack',
                         'MaPo','SeoDaeMun','SeoCho','SeongBuk','SongPa','YangCheon','YeongDengPo','EunPyung','JungRang','JongRo','JungGu',
                         'YongSan','SeonGgDong','DongDaeMun'};
    
    
  
  }
}