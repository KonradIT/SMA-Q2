.class Lcom/winnermicro/smartconfig/PestConfig$StopThread;
.super Ljava/lang/Object;
.source "PestConfig.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/winnermicro/smartconfig/PestConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StopThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/winnermicro/smartconfig/PestConfig;


# direct methods
.method constructor <init>(Lcom/winnermicro/smartconfig/PestConfig;)V
    .locals 0

    .prologue
    .line 433
    iput-object p1, p0, Lcom/winnermicro/smartconfig/PestConfig$StopThread;->this$0:Lcom/winnermicro/smartconfig/PestConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 437
    :try_start_0
    iget-object v1, p0, Lcom/winnermicro/smartconfig/PestConfig$StopThread;->this$0:Lcom/winnermicro/smartconfig/PestConfig;

    invoke-static {v1}, Lcom/winnermicro/smartconfig/PestConfig;->access$1(Lcom/winnermicro/smartconfig/PestConfig;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 442
    :goto_0
    return-void

    .line 439
    :catch_0
    move-exception v0

    .line 440
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
