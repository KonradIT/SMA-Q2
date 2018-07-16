.class public Lcom/umeng/message/proguard/I$b;
.super Ljava/lang/Object;
.source "UTMCSimpleEventIDStrategier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/message/proguard/I;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:Z

.field private b:I

.field private c:Z

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput-boolean v0, p0, Lcom/umeng/message/proguard/I$b;->c:Z

    .line 137
    iput-boolean v0, p0, Lcom/umeng/message/proguard/I$b;->d:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 140
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/umeng/message/proguard/I$b;->d:Z

    .line 141
    return-void
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 160
    iput p1, p0, Lcom/umeng/message/proguard/I$b;->b:I

    .line 161
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 152
    iput-boolean p1, p0, Lcom/umeng/message/proguard/I$b;->a:Z

    .line 153
    return-void
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 164
    iput-boolean p1, p0, Lcom/umeng/message/proguard/I$b;->c:Z

    .line 165
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/umeng/message/proguard/I$b;->d:Z

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 156
    iget v0, p0, Lcom/umeng/message/proguard/I$b;->b:I

    return v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 168
    iget-boolean v0, p0, Lcom/umeng/message/proguard/I$b;->c:Z

    return v0
.end method
