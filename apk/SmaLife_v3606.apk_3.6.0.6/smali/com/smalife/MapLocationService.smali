.class public Lcom/smalife/MapLocationService;
.super Landroid/app/Service;
.source "MapLocationService.java"


# instance fields
.field private LOCATION_BAIDU:I

.field private LOCATION_GOOGLE:I

.field private application:Lcom/smalife/MyApplication;

.field private tempcoor:Ljava/lang/String;

.field private trackName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 37
    const-string v0, "bd09ll"

    iput-object v0, p0, Lcom/smalife/MapLocationService;->tempcoor:Ljava/lang/String;

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/smalife/MapLocationService;->LOCATION_BAIDU:I

    .line 41
    const/4 v0, 0x1

    iput v0, p0, Lcom/smalife/MapLocationService;->LOCATION_GOOGLE:I

    .line 33
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 45
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 64
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 66
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    .line 50
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 51
    invoke-virtual {p0}, Lcom/smalife/MapLocationService;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/smalife/MyApplication;

    iput-object v1, p0, Lcom/smalife/MapLocationService;->application:Lcom/smalife/MyApplication;

    .line 52
    iget-object v1, p0, Lcom/smalife/MapLocationService;->trackName:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, ""

    iget-object v2, p0, Lcom/smalife/MapLocationService;->trackName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 53
    iget-object v1, p0, Lcom/smalife/MapLocationService;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v1}, Lcom/smalife/MyApplication;->getLocationModel()I

    move-result v0

    .line 54
    .local v0, "locationModel":I
    iget v1, p0, Lcom/smalife/MapLocationService;->LOCATION_BAIDU:I

    if-eq v0, v1, :cond_0

    .line 60
    .end local v0    # "locationModel":I
    :cond_0
    return-void
.end method
