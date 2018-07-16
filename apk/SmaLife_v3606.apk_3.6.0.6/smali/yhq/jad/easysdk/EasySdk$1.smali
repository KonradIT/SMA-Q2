.class Lyhq/jad/easysdk/EasySdk$1;
.super Ljava/lang/Object;
.source "EasySdk.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyhq/jad/easysdk/EasySdk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lyhq/jad/easysdk/EasySdk;


# direct methods
.method constructor <init>(Lyhq/jad/easysdk/EasySdk;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lyhq/jad/easysdk/EasySdk$1;->this$0:Lyhq/jad/easysdk/EasySdk;

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 211
    iget-object v0, p0, Lyhq/jad/easysdk/EasySdk$1;->this$0:Lyhq/jad/easysdk/EasySdk;

    invoke-static {v0}, Lyhq/jad/easysdk/EasySdk;->access$0(Lyhq/jad/easysdk/EasySdk;)I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 212
    iget-object v0, p0, Lyhq/jad/easysdk/EasySdk$1;->this$0:Lyhq/jad/easysdk/EasySdk;

    invoke-static {v0}, Lyhq/jad/easysdk/EasySdk;->access$0(Lyhq/jad/easysdk/EasySdk;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lyhq/jad/easysdk/EasySdk;->access$1(Lyhq/jad/easysdk/EasySdk;I)V

    .line 213
    :cond_0
    iget-object v0, p0, Lyhq/jad/easysdk/EasySdk$1;->this$0:Lyhq/jad/easysdk/EasySdk;

    invoke-static {v0}, Lyhq/jad/easysdk/EasySdk;->access$2(Lyhq/jad/easysdk/EasySdk;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lyhq/jad/easysdk/EasySdk$1;->this$0:Lyhq/jad/easysdk/EasySdk;

    invoke-static {v1}, Lyhq/jad/easysdk/EasySdk;->access$3(Lyhq/jad/easysdk/EasySdk;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 214
    return-void
.end method
