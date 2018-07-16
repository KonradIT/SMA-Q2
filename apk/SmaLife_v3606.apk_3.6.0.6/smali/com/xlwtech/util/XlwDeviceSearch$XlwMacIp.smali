.class Lcom/xlwtech/util/XlwDeviceSearch$XlwMacIp;
.super Ljava/lang/Object;
.source "XlwDeviceSearch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xlwtech/util/XlwDeviceSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "XlwMacIp"
.end annotation


# instance fields
.field public ip:Ljava/lang/String;

.field public mac:Ljava/lang/String;

.field final synthetic this$0:Lcom/xlwtech/util/XlwDeviceSearch;


# direct methods
.method constructor <init>(Lcom/xlwtech/util/XlwDeviceSearch;)V
    .locals 1

    .prologue
    .line 37
    iput-object p1, p0, Lcom/xlwtech/util/XlwDeviceSearch$XlwMacIp;->this$0:Lcom/xlwtech/util/XlwDeviceSearch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/xlwtech/util/XlwDeviceSearch$XlwMacIp;->ip:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/xlwtech/util/XlwDeviceSearch$XlwMacIp;->mac:Ljava/lang/String;

    return-void
.end method
