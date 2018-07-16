.class Lcom/umeng/message/proguard/I$a;
.super Ljava/lang/Object;
.source "UTMCSimpleEventIDStrategier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/message/proguard/I;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/message/proguard/I;

.field private b:I

.field private c:I


# direct methods
.method constructor <init>(Lcom/umeng/message/proguard/I;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/umeng/message/proguard/I$a;->a:Lcom/umeng/message/proguard/I;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/umeng/message/proguard/I$a;)I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcom/umeng/message/proguard/I$a;->c:I

    return v0
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .prologue
    .line 121
    iput p1, p0, Lcom/umeng/message/proguard/I$a;->b:I

    .line 122
    return-void
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 129
    iput p1, p0, Lcom/umeng/message/proguard/I$a;->c:I

    .line 130
    return-void
.end method
