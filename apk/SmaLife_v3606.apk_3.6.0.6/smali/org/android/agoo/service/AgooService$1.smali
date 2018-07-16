.class Lorg/android/agoo/service/AgooService$1;
.super Ljava/lang/Object;
.source "AgooService.java"

# interfaces
.implements Lorg/android/agoo/callback/IServiceCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/android/agoo/service/AgooService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/android/agoo/service/AgooService;


# direct methods
.method constructor <init>(Lorg/android/agoo/service/AgooService;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lorg/android/agoo/service/AgooService$1;->a:Lorg/android/agoo/service/AgooService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public stop()V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lorg/android/agoo/service/AgooService$1;->a:Lorg/android/agoo/service/AgooService;

    invoke-virtual {v0}, Lorg/android/agoo/service/AgooService;->stopSelf()V

    .line 65
    return-void
.end method
