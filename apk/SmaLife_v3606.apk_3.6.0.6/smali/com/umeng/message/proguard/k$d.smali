.class public abstract Lcom/umeng/message/proguard/k$d;
.super Lcom/umeng/message/proguard/k$f;
.source "HttpRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/message/proguard/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "d"
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
.field private final a:Ljava/io/Flushable;


# direct methods
.method protected constructor <init>(Ljava/io/Flushable;)V
    .locals 0

    .prologue
    .line 733
    invoke-direct {p0}, Lcom/umeng/message/proguard/k$f;-><init>()V

    .line 734
    iput-object p1, p0, Lcom/umeng/message/proguard/k$d;->a:Ljava/io/Flushable;

    .line 735
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
    .line 739
    iget-object v0, p0, Lcom/umeng/message/proguard/k$d;->a:Ljava/io/Flushable;

    invoke-interface {v0}, Ljava/io/Flushable;->flush()V

    .line 740
    return-void
.end method
