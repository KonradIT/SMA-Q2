.class Lcom/xlwtech/util/ConfigWireless$1;
.super Ljava/lang/Object;
.source "ConfigWireless.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xlwtech/util/ConfigWireless;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xlwtech/util/ConfigWireless;


# direct methods
.method constructor <init>(Lcom/xlwtech/util/ConfigWireless;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/xlwtech/util/ConfigWireless$1;->this$0:Lcom/xlwtech/util/ConfigWireless;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 55
    :try_start_0
    iget-object v1, p0, Lcom/xlwtech/util/ConfigWireless$1;->this$0:Lcom/xlwtech/util/ConfigWireless;

    invoke-static {v1}, Lcom/xlwtech/util/ConfigWireless;->access$0(Lcom/xlwtech/util/ConfigWireless;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :goto_0
    return-void

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
