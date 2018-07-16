.class Lcom/smalife/upgrade/ble/utils/DfuServiceListenerHelper$LogBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DfuServiceListenerHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smalife/upgrade/ble/utils/DfuServiceListenerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LogBroadcastReceiver"
.end annotation


# instance fields
.field private mGlobalLogListener:Lcom/smalife/upgrade/ble/utils/DfuLogListener;

.field private mListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/smalife/upgrade/ble/utils/DfuLogListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/smalife/upgrade/ble/utils/DfuServiceListenerHelper$LogBroadcastReceiver;->mListeners:Ljava/util/Map;

    .line 18
    return-void
.end method

.method synthetic constructor <init>(Lcom/smalife/upgrade/ble/utils/DfuServiceListenerHelper$LogBroadcastReceiver;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/smalife/upgrade/ble/utils/DfuServiceListenerHelper$LogBroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$1(Lcom/smalife/upgrade/ble/utils/DfuServiceListenerHelper$LogBroadcastReceiver;Lcom/smalife/upgrade/ble/utils/DfuLogListener;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/smalife/upgrade/ble/utils/DfuServiceListenerHelper$LogBroadcastReceiver;->setLogListener(Lcom/smalife/upgrade/ble/utils/DfuLogListener;)V

    return-void
.end method

.method static synthetic access$2(Lcom/smalife/upgrade/ble/utils/DfuServiceListenerHelper$LogBroadcastReceiver;Ljava/lang/String;Lcom/smalife/upgrade/ble/utils/DfuLogListener;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/smalife/upgrade/ble/utils/DfuServiceListenerHelper$LogBroadcastReceiver;->setLogListener(Ljava/lang/String;Lcom/smalife/upgrade/ble/utils/DfuLogListener;)V

    return-void
.end method

.method static synthetic access$3(Lcom/smalife/upgrade/ble/utils/DfuServiceListenerHelper$LogBroadcastReceiver;Lcom/smalife/upgrade/ble/utils/DfuLogListener;)Z
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/smalife/upgrade/ble/utils/DfuServiceListenerHelper$LogBroadcastReceiver;->removeLogListener(Lcom/smalife/upgrade/ble/utils/DfuLogListener;)Z

    move-result v0

    return v0
.end method

.method private removeLogListener(Lcom/smalife/upgrade/ble/utils/DfuLogListener;)Z
    .locals 3
    .param p1, "listener"    # Lcom/smalife/upgrade/ble/utils/DfuLogListener;

    .prologue
    .line 34
    iget-object v1, p0, Lcom/smalife/upgrade/ble/utils/DfuServiceListenerHelper$LogBroadcastReceiver;->mGlobalLogListener:Lcom/smalife/upgrade/ble/utils/DfuLogListener;

    if-ne v1, p1, :cond_0

    .line 35
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/smalife/upgrade/ble/utils/DfuServiceListenerHelper$LogBroadcastReceiver;->mGlobalLogListener:Lcom/smalife/upgrade/ble/utils/DfuLogListener;

    .line 38
    :cond_0
    iget-object v1, p0, Lcom/smalife/upgrade/ble/utils/DfuServiceListenerHelper$LogBroadcastReceiver;->mListeners:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_3

    .line 44
    :goto_0
    iget-object v1, p0, Lcom/smalife/upgrade/ble/utils/DfuServiceListenerHelper$LogBroadcastReceiver;->mListeners:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_4

    .line 51
    :goto_1
    iget-object v1, p0, Lcom/smalife/upgrade/ble/utils/DfuServiceListenerHelper$LogBroadcastReceiver;->mGlobalLogListener:Lcom/smalife/upgrade/ble/utils/DfuLogListener;

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/smalife/upgrade/ble/utils/DfuServiceListenerHelper$LogBroadcastReceiver;->mListeners:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    :goto_2
    return v1

    .line 38
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 39
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/smalife/upgrade/ble/utils/DfuLogListener;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_1

    .line 40
    iget-object v1, p0, Lcom/smalife/upgrade/ble/utils/DfuServiceListenerHelper$LogBroadcastReceiver;->mListeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 44
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/smalife/upgrade/ble/utils/DfuLogListener;>;"
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 45
    .restart local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/smalife/upgrade/ble/utils/DfuLogListener;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_2

    .line 46
    iget-object v1, p0, Lcom/smalife/upgrade/ble/utils/DfuServiceListenerHelper$LogBroadcastReceiver;->mListeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 51
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/smalife/upgrade/ble/utils/DfuLogListener;>;"
    :cond_5
    const/4 v1, 0x0

    goto :goto_2
.end method

.method private setLogListener(Lcom/smalife/upgrade/ble/utils/DfuLogListener;)V
    .locals 0
    .param p1, "globalLogListener"    # Lcom/smalife/upgrade/ble/utils/DfuLogListener;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/smalife/upgrade/ble/utils/DfuServiceListenerHelper$LogBroadcastReceiver;->mGlobalLogListener:Lcom/smalife/upgrade/ble/utils/DfuLogListener;

    .line 24
    return-void
.end method

.method private setLogListener(Ljava/lang/String;Lcom/smalife/upgrade/ble/utils/DfuLogListener;)V
    .locals 2
    .param p1, "deviceAddress"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/smalife/upgrade/ble/utils/DfuLogListener;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/smalife/upgrade/ble/utils/DfuServiceListenerHelper$LogBroadcastReceiver;->mListeners:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    iget-object v0, p0, Lcom/smalife/upgrade/ble/utils/DfuServiceListenerHelper$LogBroadcastReceiver;->mListeners:Ljava/util/Map;

    invoke-static {p1}, Lcom/smalife/upgrade/ble/utils/DfuServiceListenerHelper;->access$0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 56
    const-string v5, "no.nordicsemi.android.dfu.extra.EXTRA_DEVICE_ADDRESS"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, "address":Ljava/lang/String;
    iget-object v2, p0, Lcom/smalife/upgrade/ble/utils/DfuServiceListenerHelper$LogBroadcastReceiver;->mGlobalLogListener:Lcom/smalife/upgrade/ble/utils/DfuLogListener;

    .line 60
    .local v2, "globalListener":Lcom/smalife/upgrade/ble/utils/DfuLogListener;
    iget-object v5, p0, Lcom/smalife/upgrade/ble/utils/DfuServiceListenerHelper$LogBroadcastReceiver;->mListeners:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smalife/upgrade/ble/utils/DfuLogListener;

    .line 62
    .local v1, "deviceListener":Lcom/smalife/upgrade/ble/utils/DfuLogListener;
    if-nez v2, :cond_1

    if-nez v1, :cond_1

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    const-string v5, "no.nordicsemi.android.dfu.extra.EXTRA_LOG_LEVEL"

    const/4 v6, 0x0

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 66
    .local v3, "level":I
    const-string v5, "no.nordicsemi.android.dfu.extra.EXTRA_LOG_INFO"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 68
    .local v4, "message":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 69
    invoke-interface {v2, v0, v3, v4}, Lcom/smalife/upgrade/ble/utils/DfuLogListener;->onLogEvent(Ljava/lang/String;ILjava/lang/String;)V

    .line 70
    :cond_2
    if-eqz v1, :cond_0

    .line 71
    invoke-interface {v1, v0, v3, v4}, Lcom/smalife/upgrade/ble/utils/DfuLogListener;->onLogEvent(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0
.end method
