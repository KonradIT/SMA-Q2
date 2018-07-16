.class public Lcom/smalife/wx/bean/DataBean;
.super Ljava/lang/Object;
.source "DataBean.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private device_list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smalife/wx/bean/DeviceListBean;",
            ">;"
        }
    .end annotation
.end field

.field private device_num:Ljava/lang/String;

.field private op_type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDevice_list()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smalife/wx/bean/DeviceListBean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lcom/smalife/wx/bean/DataBean;->device_list:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getDevice_num()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/smalife/wx/bean/DataBean;->device_num:Ljava/lang/String;

    return-object v0
.end method

.method public getOp_type()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/smalife/wx/bean/DataBean;->op_type:Ljava/lang/String;

    return-object v0
.end method

.method public setDevice_list(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smalife/wx/bean/DeviceListBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p1, "device_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smalife/wx/bean/DeviceListBean;>;"
    iput-object p1, p0, Lcom/smalife/wx/bean/DataBean;->device_list:Ljava/util/ArrayList;

    .line 50
    return-void
.end method

.method public setDevice_num(Ljava/lang/String;)V
    .locals 0
    .param p1, "device_num"    # Ljava/lang/String;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/smalife/wx/bean/DataBean;->device_num:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setOp_type(Ljava/lang/String;)V
    .locals 0
    .param p1, "op_type"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/smalife/wx/bean/DataBean;->op_type:Ljava/lang/String;

    .line 44
    return-void
.end method
