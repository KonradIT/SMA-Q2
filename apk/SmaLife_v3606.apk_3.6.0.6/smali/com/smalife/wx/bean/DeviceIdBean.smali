.class public Lcom/smalife/wx/bean/DeviceIdBean;
.super Ljava/lang/Object;
.source "DeviceIdBean.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private deviceid:Ljava/lang/String;

.field private qrticket:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDeviceid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 9
    iget-object v0, p0, Lcom/smalife/wx/bean/DeviceIdBean;->deviceid:Ljava/lang/String;

    return-object v0
.end method

.method public getQrticket()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/smalife/wx/bean/DeviceIdBean;->qrticket:Ljava/lang/String;

    return-object v0
.end method

.method public setDeviceid(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceid"    # Ljava/lang/String;

    .prologue
    .line 12
    iput-object p1, p0, Lcom/smalife/wx/bean/DeviceIdBean;->deviceid:Ljava/lang/String;

    .line 13
    return-void
.end method

.method public setQrticket(Ljava/lang/String;)V
    .locals 0
    .param p1, "qrticket"    # Ljava/lang/String;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/smalife/wx/bean/DeviceIdBean;->qrticket:Ljava/lang/String;

    .line 19
    return-void
.end method
