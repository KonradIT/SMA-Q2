.class Lcom/xlwtech/util/XlwClientApp$XlwAppDevice;
.super Ljava/lang/Object;
.source "XlwClientApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xlwtech/util/XlwClientApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "XlwAppDevice"
.end annotation


# instance fields
.field mac:Ljava/lang/String;

.field snRecv:I

.field final synthetic this$0:Lcom/xlwtech/util/XlwClientApp;


# direct methods
.method private constructor <init>(Lcom/xlwtech/util/XlwClientApp;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/xlwtech/util/XlwClientApp$XlwAppDevice;->this$0:Lcom/xlwtech/util/XlwClientApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xlwtech/util/XlwClientApp;Lcom/xlwtech/util/XlwClientApp$XlwAppDevice;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/xlwtech/util/XlwClientApp$XlwAppDevice;-><init>(Lcom/xlwtech/util/XlwClientApp;)V

    return-void
.end method
