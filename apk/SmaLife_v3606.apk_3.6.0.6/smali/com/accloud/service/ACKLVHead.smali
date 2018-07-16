.class public Lcom/accloud/service/ACKLVHead;
.super Ljava/lang/Object;
.source "ACKLVHead.java"


# instance fields
.field public key:I

.field public type:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "key"    # I
    .param p2, "type"    # I

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p2, p0, Lcom/accloud/service/ACKLVHead;->type:I

    .line 12
    iput p1, p0, Lcom/accloud/service/ACKLVHead;->key:I

    .line 13
    return-void
.end method


# virtual methods
.method public getKey()I
    .locals 1

    .prologue
    .line 16
    iget v0, p0, Lcom/accloud/service/ACKLVHead;->key:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/accloud/service/ACKLVHead;->type:I

    return v0
.end method
