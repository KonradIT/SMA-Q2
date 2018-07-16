.class public Lcom/example/smartlinklib/ModuleInfo;
.super Ljava/lang/Object;
.source "ModuleInfo.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private ModuleIP:Ljava/lang/String;

.field private mac:Ljava/lang/String;

.field private mid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMac()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/example/smartlinklib/ModuleInfo;->mac:Ljava/lang/String;

    return-object v0
.end method

.method public getMid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/example/smartlinklib/ModuleInfo;->mid:Ljava/lang/String;

    return-object v0
.end method

.method public getModuleIP()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/example/smartlinklib/ModuleInfo;->ModuleIP:Ljava/lang/String;

    return-object v0
.end method

.method public setMac(Ljava/lang/String;)V
    .locals 0
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/example/smartlinklib/ModuleInfo;->mac:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public setMid(Ljava/lang/String;)V
    .locals 0
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/example/smartlinklib/ModuleInfo;->mid:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setModuleIP(Ljava/lang/String;)V
    .locals 0
    .param p1, "moduleIP"    # Ljava/lang/String;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/example/smartlinklib/ModuleInfo;->ModuleIP:Ljava/lang/String;

    .line 28
    return-void
.end method
