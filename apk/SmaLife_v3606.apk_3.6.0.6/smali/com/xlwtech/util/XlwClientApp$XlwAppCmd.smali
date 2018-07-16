.class Lcom/xlwtech/util/XlwClientApp$XlwAppCmd;
.super Ljava/lang/Object;
.source "XlwClientApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xlwtech/util/XlwClientApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "XlwAppCmd"
.end annotation


# instance fields
.field mac:Ljava/lang/String;

.field req:[B

.field req_len:I

.field sn:I

.field final synthetic this$0:Lcom/xlwtech/util/XlwClientApp;

.field tickReq:J

.field tickSnd:J


# direct methods
.method constructor <init>(Lcom/xlwtech/util/XlwClientApp;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 42
    iput-object p1, p0, Lcom/xlwtech/util/XlwClientApp$XlwAppCmd;->this$0:Lcom/xlwtech/util/XlwClientApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/16 v0, 0x12c

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/xlwtech/util/XlwClientApp$XlwAppCmd;->req:[B

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/xlwtech/util/XlwClientApp$XlwAppCmd;->mac:Ljava/lang/String;

    iput v1, p0, Lcom/xlwtech/util/XlwClientApp$XlwAppCmd;->sn:I

    iput v1, p0, Lcom/xlwtech/util/XlwClientApp$XlwAppCmd;->req_len:I

    return-void
.end method
