.class Lcom/xlwtech/util/XlwSmartResponse$2;
.super Ljava/lang/Object;
.source "XlwSmartResponse.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xlwtech/util/XlwSmartResponse;->run()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xlwtech/util/XlwSmartResponse;


# direct methods
.method constructor <init>(Lcom/xlwtech/util/XlwSmartResponse;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/xlwtech/util/XlwSmartResponse$2;->this$0:Lcom/xlwtech/util/XlwSmartResponse;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 70
    :try_start_0
    iget-object v0, p0, Lcom/xlwtech/util/XlwSmartResponse$2;->this$0:Lcom/xlwtech/util/XlwSmartResponse;

    invoke-static {v0}, Lcom/xlwtech/util/XlwSmartResponse;->access$1(Lcom/xlwtech/util/XlwSmartResponse;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :goto_0
    return-void

    .line 71
    :catch_0
    move-exception v0

    goto :goto_0
.end method
