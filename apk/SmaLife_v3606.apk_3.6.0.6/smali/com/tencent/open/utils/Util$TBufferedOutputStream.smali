.class Lcom/tencent/open/utils/Util$TBufferedOutputStream;
.super Ljava/io/BufferedOutputStream;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/open/utils/Util;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TBufferedOutputStream"
.end annotation


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1

    .prologue
    .line 259
    invoke-direct {p0, p1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 260
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/open/utils/Util$TBufferedOutputStream;->a:I

    .line 261
    return-void
.end method


# virtual methods
.method public getLength()I
    .locals 1

    .prologue
    .line 270
    iget v0, p0, Lcom/tencent/open/utils/Util$TBufferedOutputStream;->a:I

    return v0
.end method

.method public write([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 265
    invoke-super {p0, p1}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 266
    iget v0, p0, Lcom/tencent/open/utils/Util$TBufferedOutputStream;->a:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tencent/open/utils/Util$TBufferedOutputStream;->a:I

    .line 267
    return-void
.end method
