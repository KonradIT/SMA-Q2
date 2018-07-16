.class Lcom/xlwtech/util/XlwDeviceCheck$2;
.super Ljava/lang/Object;
.source "XlwDeviceCheck.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xlwtech/util/XlwDeviceCheck;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xlwtech/util/XlwDeviceCheck;


# direct methods
.method constructor <init>(Lcom/xlwtech/util/XlwDeviceCheck;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/xlwtech/util/XlwDeviceCheck$2;->this$0:Lcom/xlwtech/util/XlwDeviceCheck;

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 114
    :try_start_0
    iget-object v0, p0, Lcom/xlwtech/util/XlwDeviceCheck$2;->this$0:Lcom/xlwtech/util/XlwDeviceCheck;

    invoke-static {v0}, Lcom/xlwtech/util/XlwDeviceCheck;->access$1(Lcom/xlwtech/util/XlwDeviceCheck;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :goto_0
    return-void

    .line 115
    :catch_0
    move-exception v0

    goto :goto_0
.end method
