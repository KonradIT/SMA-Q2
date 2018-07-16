.class Lcom/accloud/cloudservice/ACFileManager$5$1;
.super Ljava/lang/Object;
.source "ACFileManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/accloud/cloudservice/ACFileManager$5;->progress(Ljava/lang/String;D)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/accloud/cloudservice/ACFileManager$5;

.field final synthetic val$percent:D


# direct methods
.method constructor <init>(Lcom/accloud/cloudservice/ACFileManager$5;D)V
    .locals 0

    .prologue
    .line 231
    iput-object p1, p0, Lcom/accloud/cloudservice/ACFileManager$5$1;->this$1:Lcom/accloud/cloudservice/ACFileManager$5;

    iput-wide p2, p0, Lcom/accloud/cloudservice/ACFileManager$5$1;->val$percent:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 234
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 235
    .local v0, "df":Ljava/text/DecimalFormat;
    iget-object v1, p0, Lcom/accloud/cloudservice/ACFileManager$5$1;->this$1:Lcom/accloud/cloudservice/ACFileManager$5;

    iget-object v1, v1, Lcom/accloud/cloudservice/ACFileManager$5;->val$progressCallback:Lcom/accloud/cloudservice/ProgressCallback;

    new-instance v2, Ljava/lang/Double;

    iget-wide v4, p0, Lcom/accloud/cloudservice/ACFileManager$5$1;->val$percent:D

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/accloud/cloudservice/ProgressCallback;->progress(D)V

    .line 236
    return-void
.end method
