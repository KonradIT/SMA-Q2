.class Lcom/smalife/ble/BlueToothService$SMSObserver;
.super Landroid/database/ContentObserver;
.source "BlueToothService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smalife/ble/BlueToothService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SMSObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smalife/ble/BlueToothService;


# direct methods
.method public constructor <init>(Lcom/smalife/ble/BlueToothService;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 2855
    iput-object p1, p0, Lcom/smalife/ble/BlueToothService$SMSObserver;->this$0:Lcom/smalife/ble/BlueToothService;

    .line 2856
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 2857
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v4, 0x0

    .line 2861
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 2862
    iget-object v2, p0, Lcom/smalife/ble/BlueToothService$SMSObserver;->this$0:Lcom/smalife/ble/BlueToothService;

    const-string v3, "sma"

    invoke-virtual {v2, v3, v4}, Lcom/smalife/ble/BlueToothService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2864
    .local v1, "preferences":Landroid/content/SharedPreferences;
    const-string v2, "msg_notic"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 2868
    .local v0, "msg_notic":Z
    return-void
.end method
