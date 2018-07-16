.class public Lcom/accloud/cloudservice/ACNetworkChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ACNetworkChangeReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ACNetworkChangeReceiver"

.field private static mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/accloud/cloudservice/NetEventHandler;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private flag:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/accloud/cloudservice/ACNetworkChangeReceiver;->mListeners:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/accloud/cloudservice/ACNetworkChangeReceiver;->flag:Z

    return-void
.end method

.method static synthetic access$000()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/accloud/cloudservice/ACNetworkChangeReceiver;->mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static addEventHandler(Lcom/accloud/cloudservice/NetEventHandler;)V
    .locals 3
    .param p0, "handler"    # Lcom/accloud/cloudservice/NetEventHandler;

    .prologue
    .line 49
    sget-object v1, Lcom/accloud/cloudservice/ACNetworkChangeReceiver;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 53
    .local v0, "mFilter":Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 54
    sget-object v1, Lcom/accloud/cloudservice/AC;->context:Landroid/content/Context;

    new-instance v2, Lcom/accloud/cloudservice/ACNetworkChangeReceiver;

    invoke-direct {v2}, Lcom/accloud/cloudservice/ACNetworkChangeReceiver;-><init>()V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 55
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 25
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 26
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 27
    const-string v1, "ACNetworkChangeReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive action:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/accloud/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    iget-boolean v1, p0, Lcom/accloud/cloudservice/ACNetworkChangeReceiver;->flag:Z

    if-eqz v1, :cond_0

    .line 29
    const/16 v1, 0xbb8

    new-instance v2, Lcom/accloud/cloudservice/ACNetworkChangeReceiver$1;

    invoke-direct {v2, p0}, Lcom/accloud/cloudservice/ACNetworkChangeReceiver$1;-><init>(Lcom/accloud/cloudservice/ACNetworkChangeReceiver;)V

    invoke-static {v1, v2}, Lcom/accloud/cloudservice/AC;->findLocalDevice(ILcom/accloud/cloudservice/PayloadCallback;)V

    .line 44
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/accloud/cloudservice/ACNetworkChangeReceiver;->flag:Z

    .line 46
    :cond_1
    return-void
.end method
