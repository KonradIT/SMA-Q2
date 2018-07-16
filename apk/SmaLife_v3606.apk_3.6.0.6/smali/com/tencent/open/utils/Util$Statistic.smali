.class public Lcom/tencent/open/utils/Util$Statistic;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/open/utils/Util;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Statistic"
.end annotation


# instance fields
.field public reqSize:J

.field public response:Ljava/lang/String;

.field public rspSize:J


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 239
    iput-object p1, p0, Lcom/tencent/open/utils/Util$Statistic;->response:Ljava/lang/String;

    .line 240
    int-to-long v0, p2

    iput-wide v0, p0, Lcom/tencent/open/utils/Util$Statistic;->reqSize:J

    .line 241
    iget-object v0, p0, Lcom/tencent/open/utils/Util$Statistic;->response:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/tencent/open/utils/Util$Statistic;->response:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/tencent/open/utils/Util$Statistic;->rspSize:J

    .line 244
    :cond_0
    return-void
.end method
