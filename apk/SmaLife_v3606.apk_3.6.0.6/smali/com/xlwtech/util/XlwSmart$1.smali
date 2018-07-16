.class Lcom/xlwtech/util/XlwSmart$1;
.super Ljava/lang/Object;
.source "XlwSmart.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xlwtech/util/XlwSmart;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xlwtech/util/XlwSmart;


# direct methods
.method constructor <init>(Lcom/xlwtech/util/XlwSmart;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/xlwtech/util/XlwSmart$1;->this$0:Lcom/xlwtech/util/XlwSmart;

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 100
    :try_start_0
    iget-object v1, p0, Lcom/xlwtech/util/XlwSmart$1;->this$0:Lcom/xlwtech/util/XlwSmart;

    invoke-static {v1}, Lcom/xlwtech/util/XlwSmart;->access$0(Lcom/xlwtech/util/XlwSmart;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :goto_0
    return-void

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
