.class public Lcom/umeng/message/proguard/S;
.super Ljava/lang/Object;
.source "UTMCVariables.java"


# static fields
.field public static final a:Lcom/umeng/message/proguard/S;


# instance fields
.field private b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 5
    new-instance v0, Lcom/umeng/message/proguard/S;

    invoke-direct {v0}, Lcom/umeng/message/proguard/S;-><init>()V

    sput-object v0, Lcom/umeng/message/proguard/S;->a:Lcom/umeng/message/proguard/S;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/umeng/message/proguard/S;->b:Z

    return-void
.end method

.method public static a()Lcom/umeng/message/proguard/S;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/umeng/message/proguard/S;->a:Lcom/umeng/message/proguard/S;

    return-object v0
.end method


# virtual methods
.method public b()Z
    .locals 1

    .prologue
    .line 14
    iget-boolean v0, p0, Lcom/umeng/message/proguard/S;->b:Z

    return v0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/umeng/message/proguard/S;->b:Z

    .line 19
    return-void
.end method
