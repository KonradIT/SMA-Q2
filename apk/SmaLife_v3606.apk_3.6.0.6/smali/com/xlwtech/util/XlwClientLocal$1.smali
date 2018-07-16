.class Lcom/xlwtech/util/XlwClientLocal$1;
.super Ljava/lang/Object;
.source "XlwClientLocal.java"

# interfaces
.implements Lcom/xlwtech/util/XlwTcpClient$XlwTcpClientListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xlwtech/util/XlwClientLocal;->GetTcpClient(Ljava/lang/String;)Lcom/xlwtech/util/XlwTcpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xlwtech/util/XlwClientLocal;


# direct methods
.method constructor <init>(Lcom/xlwtech/util/XlwClientLocal;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/xlwtech/util/XlwClientLocal$1;->this$0:Lcom/xlwtech/util/XlwClientLocal;

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Ljava/lang/String;[BI)V
    .locals 1
    .param p1, "mac"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "length"    # I

    .prologue
    .line 95
    iget-object v0, p0, Lcom/xlwtech/util/XlwClientLocal$1;->this$0:Lcom/xlwtech/util/XlwClientLocal;

    invoke-static {v0}, Lcom/xlwtech/util/XlwClientLocal;->access$0(Lcom/xlwtech/util/XlwClientLocal;)Lcom/xlwtech/util/XlwClientLocal$XlwClientLocalListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xlwtech/util/XlwClientLocal$1;->this$0:Lcom/xlwtech/util/XlwClientLocal;

    invoke-static {v0}, Lcom/xlwtech/util/XlwClientLocal;->access$0(Lcom/xlwtech/util/XlwClientLocal;)Lcom/xlwtech/util/XlwClientLocal$XlwClientLocalListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/xlwtech/util/XlwClientLocal$XlwClientLocalListener;->onReceive(Ljava/lang/String;[BI)V

    .line 96
    :cond_0
    return-void
.end method
