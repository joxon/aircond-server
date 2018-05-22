﻿#include "client.h"
#include "ui_client.h"
#include "detaillist.h"
#include "IconsFontAwesome5.h"

Client::Client(QWidget *parent) :
   QWidget(parent),
   ui(new Ui::Client)
{
   ui->setupUi(this);

   //引入图形字体
   fontId   = QFontDatabase::addApplicationFont(":/image/Font-Awesome-5-Free-Solid-900.otf");
   fontName = QFontDatabase::applicationFontFamilies(fontId).at(0);
   font     = QFont(fontName);
   font.setPixelSize(15);

   ui->labelRoomIcon->setFont(font);
   ui->labelRoomIcon->setText((QChar)ICON_FA_SPINNER);

//   ui->labelConnIcon->setFont(font);
//   ui->labelConnIcon->setText((QChar)ICON_FA_TOGGLE_OFF);

   ui->labelCurrentTempIcon->setFont(font);
   ui->labelCurrentTempIcon->setText((QChar)ICON_FA_THERMOMETER_FULL);

   ui->labelTargetTempIcon->setFont(font);
   ui->labelTargetTempIcon->setText((QChar)ICON_FA_THERMOMETER_EMPTY);

   ui->labelSpeedIcon->setFont(font);
   ui->labelSpeedIcon->setText((QChar)ICON_FA_SNOWFLAKE);
}


Client::~Client()
{
   delete ui;
}


void Client::setId(const QString& value)
{
   id = value;
   ui->labelRoomName->setText(QString("房间 %1").arg(value));
}


//void Client::setConn(Client::Conn conn)
//{
//   switch (conn)
//   {
//   case ConnOffline:
//      ui->labelConnIcon->setFont(font);
//      ui->labelConnIcon->setText((QChar)ICON_FA_TOGGLE_OFF);
//      ui->labelConn->setText(tr("离线"));
//      ui->frameDetails->setVisible(false);
//      ui->frameCost->setVisible(false);
//      break;

//   case ConnOnline:
//      ui->labelConnIcon->setFont(font);
//      ui->labelConnIcon->setText((QChar)ICON_FA_TOGGLE_ON);
//      ui->labelConn->setText(tr("在线"));
//      ui->frameDetails->setVisible(true);
//      ui->frameCost->setVisible(true);
//      break;

//   default:
//      break;
//   }
//}


void Client::setWorking(Client::Working work)
{
   switch (work)
   {
   case WorkingNo:
      working = WorkingNo;
      ui->labelWorking->setText(tr("工作状态：否"));
      ui->labelTargetTemp->setText(tr("目标温度：N/A"));
      ui->labelSpeed->setText(tr("风速：N/A"));
      break;

   case WorkingYes:
      working = WorkingYes;
      ui->labelWorking->setText(tr("工作状态：是"));
      break;

   case WorkingDone:
      working = WorkingDone;
      ui->labelWorking->setText(tr("工作状态：完成"));
      ui->labelSpeed->setText(tr("风速：N/A"));
      break;

   default:
      break;
   }
}


void Client::setServing(Client::Serving serve)
{
   switch (serve)
   {
   case ServingNo:
      serving = ServingNo;
      ui->labelServing->setText(tr("服务状态：是"));
      break;

   case ServingYes:
      serving = ServingYes;
      ui->labelServing->setText(tr("服务状态：否"));
      break;

   default:
      break;
   }
}


void Client::setCurrentTemp(double temp)
{
   currentTemp = temp;
   ui->labelCurrentTemp->setText(QString("当前温度：%1 ℃").arg(temp));
}


void Client::setTargetTemp(double temp)
{
   targetTemp = temp;
   ui->labelTargetTemp->setText(QString("目标温度：%1 ℃").arg(temp));
}


void Client::setSpeed(Client::Speed _speed)
{
   switch (_speed)
   {
   case SpeedNone:
      speed = SpeedNone;
      ui->labelSpeed->setText(QString("风速：无"));
      break;

   case SpeedLow:
      speed = SpeedLow;
      ui->labelSpeed->setText(QString("风速：低"));
      break;

   case SpeedHigh:
      speed = SpeedHigh;
      ui->labelSpeed->setText(QString("风速：高"));
      break;

   default:
      ui->labelSpeed->setText(QString("风速：未知"));
      break;
   }
}


void Client::setEnergy(double _energy)
{
   energy = _energy;
   ui->labelEnergy->setText(QString("能量：%1 度").arg(_energy));
}


void Client::setCost(double _cost)
{
   cost = _cost;
}

void Client::setST()
{
    start_t = QDateTime::currentDateTime();
}

double Client::getCurrentTemp() const
{
   return currentTemp;
}


Client::Speed Client::getSpeed() const
{
   return speed;
}


double Client::getCost() const
{
   return cost;
}


//void Client::Init_Room()
//{
//    Link = Work = Service = false;              // 未连接，未工作，未服务
//    Now = Goal = cost = energy = 0;             // 初始化为0000
//    Wind = 0;                                    // 风速是 0 1 2 对应三个挡位
//   start_t.fromString("9999-12-31 00:00:00", "yyyy-MM-dd hh:mm:ss");
//}


void Client::Cost_Cal(double new_n)                   // 为了计算需要1个周期计算一次，不然需要不断获取上一次的温度风速等信息
{
   // 计算公式emmm S是单价 固定了时间所以只需要考虑风速和单价
   //cost += wind * S;             S == 1;
   double temp = qAbs(new_n - currentTemp) * ((double)speed / 2) * 1;

   // 还需要编一个公式计算能量 暂定为 cost * 1.25
   cost  += temp;
   energy = cost * 1.25;

}

bool Client::CheckServing()
{
    return this->serving == ServingYes;
}

void Client::write_detail_list(QString roomid)
{  // 当出现：①达到目标 ②用户停止工作 ③连接断开
   // 传入当前的房间号roomid
   QDateTime endt  = QDateTime::currentDateTime();
   QString   tmp_t = endt.toString("yyyy-MM-dd hh:mm:ss");

   QString   select_max_sql = "SELECT MAX(id) from Info_list";
   int       max_id         = 0;
   QSqlQuery sql_query;

   if (!sql_query.exec(select_max_sql))
   {
      qDebug() << sql_query.lastError();
   }
   else
   {
      while (sql_query.next())
      {
         max_id = sql_query.value(0).toInt();
         qDebug() << QString("max id:%1").arg(max_id);
      }
   }
   max_id++;

   QString id         = QString::number(max_id, 10);
   QString stat       = start_t.toString("yyyy-MM-dd hh:mm:ss");
   QString cp         = QString::number(cost, 10, 4);
   QString ep         = QString::number(energy, 10, 4);
   QString insert_sql = "insert into Info_list values(" + id + ", " + roomid + ", " + stat + ", " + tmp_t + ", " + cp + ", " + ep + ")";
   if (!sql_query.exec(insert_sql))
   {
      qDebug() << sql_query.lastError();
   }
   else
   {    // 插入成功，将energy, price(cost) start_t置零
      cost = energy = 0;
//      start_t.fromString("9999-12-31 00:00:00", "yyyy-MM-dd hh:mm:ss");
   }
}


void Client::read_detail_list(QString roomid, QString stat)
{
   QSqlQuery sql_query;
   QString   select_sql = "select * from Info_list where roomid = \"" + roomid + "\" and start_t > \"" + stat + "\"";

   if (!sql_query.exec(select_sql))
   {
      qDebug() << sql_query.lastError();
   }
   else
   {
      // 新建一个ui 来表示详单
      detailList *Dl = new detailList(sql_query, NULL);
      Dl->show();
   }
}
