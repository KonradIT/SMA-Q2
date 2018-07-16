.class public Lcom/umeng/message/proguard/ax;
.super Ljava/lang/Object;
.source "UTMIVariables.java"


# static fields
.field private static a:Lcom/umeng/message/proguard/ax;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 4
    new-instance v0, Lcom/umeng/message/proguard/ax;

    invoke-direct {v0}, Lcom/umeng/message/proguard/ax;-><init>()V

    sput-object v0, Lcom/umeng/message/proguard/ax;->a:Lcom/umeng/message/proguard/ax;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object v1, p0, Lcom/umeng/message/proguard/ax;->b:Ljava/lang/String;

    .line 7
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/umeng/message/proguard/ax;->c:Z

    .line 8
    iput-object v1, p0, Lcom/umeng/message/proguard/ax;->d:Ljava/lang/String;

    .line 9
    iput-object v1, p0, Lcom/umeng/message/proguard/ax;->e:Ljava/lang/String;

    return-void
.end method

.method public static a()Lcom/umeng/message/proguard/ax;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/umeng/message/proguard/ax;->a:Lcom/umeng/message/proguard/ax;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 20
    iput-object p1, p0, Lcom/umeng/message/proguard/ax;->e:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/umeng/message/proguard/ax;->c:Z

    .line 37
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/umeng/message/proguard/ax;->e:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/umeng/message/proguard/ax;->d:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/umeng/message/proguard/ax;->d:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/umeng/message/proguard/ax;->b:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/umeng/message/proguard/ax;->c:Z

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/umeng/message/proguard/ax;->b:Ljava/lang/String;

    return-object v0
.end method
