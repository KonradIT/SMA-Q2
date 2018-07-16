.class public Lcom/smalife/wx/bean/DeviceListBean;
.super Ljava/lang/Object;
.source "DeviceListBean.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private auth_key:Ljava/lang/String;

.field private auth_ver:Ljava/lang/String;

.field private ble_simple_protocol:Ljava/lang/String;

.field private close_strategy:Ljava/lang/String;

.field private conn_strategy:Ljava/lang/String;

.field private connect_protocol:Ljava/lang/String;

.field private crypt_method:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private mac:Ljava/lang/String;

.field private manu_mac_pos:Ljava/lang/String;

.field private ser_mac_pos:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAuth_key()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/smalife/wx/bean/DeviceListBean;->auth_key:Ljava/lang/String;

    return-object v0
.end method

.method public getAuth_ver()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/smalife/wx/bean/DeviceListBean;->auth_ver:Ljava/lang/String;

    return-object v0
.end method

.method public getBle_simple_protocol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/smalife/wx/bean/DeviceListBean;->ble_simple_protocol:Ljava/lang/String;

    return-object v0
.end method

.method public getClose_strategy()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/smalife/wx/bean/DeviceListBean;->close_strategy:Ljava/lang/String;

    return-object v0
.end method

.method public getConn_strategy()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/smalife/wx/bean/DeviceListBean;->conn_strategy:Ljava/lang/String;

    return-object v0
.end method

.method public getConnect_protocol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/smalife/wx/bean/DeviceListBean;->connect_protocol:Ljava/lang/String;

    return-object v0
.end method

.method public getCrypt_method()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/smalife/wx/bean/DeviceListBean;->crypt_method:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/smalife/wx/bean/DeviceListBean;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getMac()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/smalife/wx/bean/DeviceListBean;->mac:Ljava/lang/String;

    return-object v0
.end method

.method public getManu_mac_pos()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/smalife/wx/bean/DeviceListBean;->manu_mac_pos:Ljava/lang/String;

    return-object v0
.end method

.method public getSer_mac_pos()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/smalife/wx/bean/DeviceListBean;->ser_mac_pos:Ljava/lang/String;

    return-object v0
.end method

.method public setAuth_key(Ljava/lang/String;)V
    .locals 0
    .param p1, "auth_key"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/smalife/wx/bean/DeviceListBean;->auth_key:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setAuth_ver(Ljava/lang/String;)V
    .locals 0
    .param p1, "auth_ver"    # Ljava/lang/String;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/smalife/wx/bean/DeviceListBean;->auth_ver:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setBle_simple_protocol(Ljava/lang/String;)V
    .locals 0
    .param p1, "ble_simple_protocol"    # Ljava/lang/String;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/smalife/wx/bean/DeviceListBean;->ble_simple_protocol:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public setClose_strategy(Ljava/lang/String;)V
    .locals 0
    .param p1, "close_strategy"    # Ljava/lang/String;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/smalife/wx/bean/DeviceListBean;->close_strategy:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setConn_strategy(Ljava/lang/String;)V
    .locals 0
    .param p1, "conn_strategy"    # Ljava/lang/String;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/smalife/wx/bean/DeviceListBean;->conn_strategy:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setConnect_protocol(Ljava/lang/String;)V
    .locals 0
    .param p1, "connect_protocol"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/smalife/wx/bean/DeviceListBean;->connect_protocol:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setCrypt_method(Ljava/lang/String;)V
    .locals 0
    .param p1, "crypt_method"    # Ljava/lang/String;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/smalife/wx/bean/DeviceListBean;->crypt_method:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/smalife/wx/bean/DeviceListBean;->id:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setMac(Ljava/lang/String;)V
    .locals 0
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/smalife/wx/bean/DeviceListBean;->mac:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setManu_mac_pos(Ljava/lang/String;)V
    .locals 0
    .param p1, "manu_mac_pos"    # Ljava/lang/String;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/smalife/wx/bean/DeviceListBean;->manu_mac_pos:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setSer_mac_pos(Ljava/lang/String;)V
    .locals 0
    .param p1, "ser_mac_pos"    # Ljava/lang/String;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/smalife/wx/bean/DeviceListBean;->ser_mac_pos:Ljava/lang/String;

    .line 87
    return-void
.end method
