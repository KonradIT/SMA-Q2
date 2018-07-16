.class public Lcom/smalife/utils/HeartPoint;
.super Ljava/lang/Object;
.source "HeartPoint.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private x:I

.field private y:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p1, p0, Lcom/smalife/utils/HeartPoint;->x:I

    .line 15
    iput p2, p0, Lcom/smalife/utils/HeartPoint;->y:I

    .line 16
    return-void
.end method


# virtual methods
.method public getX()I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/smalife/utils/HeartPoint;->x:I

    return v0
.end method

.method public getY()I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/smalife/utils/HeartPoint;->y:I

    return v0
.end method

.method public setX(I)V
    .locals 0
    .param p1, "x"    # I

    .prologue
    .line 27
    iput p1, p0, Lcom/smalife/utils/HeartPoint;->x:I

    .line 28
    return-void
.end method

.method public setY(I)V
    .locals 0
    .param p1, "y"    # I

    .prologue
    .line 21
    iput p1, p0, Lcom/smalife/utils/HeartPoint;->y:I

    .line 22
    return-void
.end method
