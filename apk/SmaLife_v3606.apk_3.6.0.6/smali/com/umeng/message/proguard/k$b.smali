.class public abstract Lcom/umeng/message/proguard/k$b;
.super Lcom/umeng/message/proguard/k$f;
.source "HttpRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/message/proguard/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/umeng/message/proguard/k$f",
        "<TV;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/io/Closeable;

.field private final b:Z


# direct methods
.method protected constructor <init>(Ljava/io/Closeable;Z)V
    .locals 0

    .prologue
    .line 698
    invoke-direct {p0}, Lcom/umeng/message/proguard/k$f;-><init>()V

    .line 699
    iput-object p1, p0, Lcom/umeng/message/proguard/k$b;->a:Ljava/io/Closeable;

    .line 700
    iput-boolean p2, p0, Lcom/umeng/message/proguard/k$b;->b:Z

    .line 701
    return-void
.end method


# virtual methods
.method protected c()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 705
    iget-object v0, p0, Lcom/umeng/message/proguard/k$b;->a:Ljava/io/Closeable;

    instance-of v0, v0, Ljava/io/Flushable;

    if-eqz v0, :cond_0

    .line 706
    iget-object v0, p0, Lcom/umeng/message/proguard/k$b;->a:Ljava/io/Closeable;

    check-cast v0, Ljava/io/Flushable;

    invoke-interface {v0}, Ljava/io/Flushable;->flush()V

    .line 707
    :cond_0
    iget-boolean v0, p0, Lcom/umeng/message/proguard/k$b;->b:Z

    if-eqz v0, :cond_1

    .line 709
    :try_start_0
    iget-object v0, p0, Lcom/umeng/message/proguard/k$b;->a:Ljava/io/Closeable;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 715
    :goto_0
    return-void

    .line 714
    :cond_1
    iget-object v0, p0, Lcom/umeng/message/proguard/k$b;->a:Ljava/io/Closeable;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    goto :goto_0

    .line 710
    :catch_0
    move-exception v0

    goto :goto_0
.end method
