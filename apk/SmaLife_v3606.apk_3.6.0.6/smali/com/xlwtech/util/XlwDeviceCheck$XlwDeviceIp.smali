.class Lcom/xlwtech/util/XlwDeviceCheck$XlwDeviceIp;
.super Ljava/lang/Object;
.source "XlwDeviceCheck.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xlwtech/util/XlwDeviceCheck;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "XlwDeviceIp"
.end annotation


# instance fields
.field public ip:Ljava/lang/String;

.field public mac:Ljava/lang/String;

.field public sendCount:I

.field public status:I

.field final synthetic this$0:Lcom/xlwtech/util/XlwDeviceCheck;

.field public tickCheck:J

.field public tickSend:J


# direct methods
.method constructor <init>(Lcom/xlwtech/util/XlwDeviceCheck;)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 46
    iput-object p1, p0, Lcom/xlwtech/util/XlwDeviceCheck$XlwDeviceIp;->this$0:Lcom/xlwtech/util/XlwDeviceCheck;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/xlwtech/util/XlwDeviceCheck$XlwDeviceIp;->ip:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/xlwtech/util/XlwDeviceCheck$XlwDeviceIp;->mac:Ljava/lang/String;

    iput-wide v2, p0, Lcom/xlwtech/util/XlwDeviceCheck$XlwDeviceIp;->tickCheck:J

    iput-wide v2, p0, Lcom/xlwtech/util/XlwDeviceCheck$XlwDeviceIp;->tickSend:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/xlwtech/util/XlwDeviceCheck$XlwDeviceIp;->sendCount:I

    return-void
.end method
