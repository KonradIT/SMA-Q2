.class final Lorg/android/agoo/impl/a$d;
.super Ljava/lang/Object;
.source "ElectionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/android/agoo/impl/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "d"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 600
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 607
    iget-object v0, p0, Lorg/android/agoo/impl/a$d;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 611
    iput-object p1, p0, Lorg/android/agoo/impl/a$d;->a:Ljava/lang/String;

    .line 612
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 619
    iput-boolean p1, p0, Lorg/android/agoo/impl/a$d;->b:Z

    .line 620
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 627
    iput-object p1, p0, Lorg/android/agoo/impl/a$d;->c:Ljava/lang/String;

    .line 628
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 615
    iget-boolean v0, p0, Lorg/android/agoo/impl/a$d;->b:Z

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 623
    iget-object v0, p0, Lorg/android/agoo/impl/a$d;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 635
    iput-object p1, p0, Lorg/android/agoo/impl/a$d;->d:Ljava/lang/String;

    .line 636
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 631
    iget-object v0, p0, Lorg/android/agoo/impl/a$d;->d:Ljava/lang/String;

    return-object v0
.end method
