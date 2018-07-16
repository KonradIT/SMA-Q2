.class public Lcom/smalife/utils/SportPoint;
.super Ljava/lang/Object;
.source "SportPoint.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private action_time:I

.field private day_key:I

.field private steps:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAction_time()I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/smalife/utils/SportPoint;->action_time:I

    return v0
.end method

.method public getDay_key()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/smalife/utils/SportPoint;->day_key:I

    return v0
.end method

.method public getSteps()I
    .locals 1

    .prologue
    .line 15
    iget v0, p0, Lcom/smalife/utils/SportPoint;->steps:I

    return v0
.end method

.method public setAction_time(I)V
    .locals 0
    .param p1, "action_time"    # I

    .prologue
    .line 24
    iput p1, p0, Lcom/smalife/utils/SportPoint;->action_time:I

    .line 25
    return-void
.end method

.method public setDay_key(I)V
    .locals 0
    .param p1, "day_key"    # I

    .prologue
    .line 30
    iput p1, p0, Lcom/smalife/utils/SportPoint;->day_key:I

    .line 31
    return-void
.end method

.method public setSteps(I)V
    .locals 0
    .param p1, "steps"    # I

    .prologue
    .line 18
    iput p1, p0, Lcom/smalife/utils/SportPoint;->steps:I

    .line 19
    return-void
.end method
