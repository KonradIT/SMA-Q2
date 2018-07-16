.class public Lcom/winnermicro/smartconfig/SmartConfigFactory;
.super Ljava/lang/Object;
.source "SmartConfigFactory.java"


# instance fields
.field private final version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const-string v0, "1.0.5"

    iput-object v0, p0, Lcom/winnermicro/smartconfig/SmartConfigFactory;->version:Ljava/lang/String;

    .line 5
    return-void
.end method


# virtual methods
.method public createSmartConfig(Lcom/winnermicro/smartconfig/ConfigType;Landroid/content/Context;)Lcom/winnermicro/smartconfig/ISmartConfig;
    .locals 1
    .param p1, "configType"    # Lcom/winnermicro/smartconfig/ConfigType;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 9
    sget-object v0, Lcom/winnermicro/smartconfig/ConfigType;->UDP:Lcom/winnermicro/smartconfig/ConfigType;

    if-ne p1, v0, :cond_0

    .line 10
    new-instance v0, Lcom/winnermicro/smartconfig/UDPMulticastConfig;

    invoke-direct {v0, p2}, Lcom/winnermicro/smartconfig/UDPMulticastConfig;-><init>(Landroid/content/Context;)V

    .line 12
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    const-string v0, "1.0.5"

    return-object v0
.end method
