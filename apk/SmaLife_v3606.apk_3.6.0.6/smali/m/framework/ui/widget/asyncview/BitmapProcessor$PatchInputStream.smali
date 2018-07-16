.class Lm/framework/ui/widget/asyncview/BitmapProcessor$PatchInputStream;
.super Ljava/io/FilterInputStream;
.source "BitmapProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm/framework/ui/widget/asyncview/BitmapProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PatchInputStream"
.end annotation


# instance fields
.field in:Ljava/io/InputStream;


# direct methods
.method protected constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    .line 378
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 379
    iput-object p1, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$PatchInputStream;->in:Ljava/io/InputStream;

    .line 380
    return-void
.end method


# virtual methods
.method public skip(J)J
    .locals 9
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 383
    const-wide/16 v2, 0x0

    .line 384
    .local v2, "m":J
    :goto_0
    cmp-long v4, v2, p1

    if-ltz v4, :cond_1

    .line 391
    :cond_0
    return-wide v2

    .line 385
    :cond_1
    iget-object v4, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$PatchInputStream;->in:Ljava/io/InputStream;

    sub-long v6, p1, v2

    invoke-virtual {v4, v6, v7}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    .line 386
    .local v0, "_m":J
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-eqz v4, :cond_0

    .line 389
    add-long/2addr v2, v0

    goto :goto_0
.end method
