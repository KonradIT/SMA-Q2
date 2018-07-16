.class public interface abstract Lorg/android/agoo/ut/UT;
.super Ljava/lang/Object;
.source "UT.java"


# static fields
.field public static final AGOO_EVENT_ID:I = 0x1051b9cd

.field public static final NEW_EVENT_ID:I = 0x101d2


# virtual methods
.method public abstract commitEvent(ILjava/lang/Object;)V
.end method

.method public abstract commitEvent(ILjava/lang/Object;Ljava/lang/Object;)V
.end method

.method public abstract commitEvent(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
.end method

.method public varargs abstract commitEvent(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V
.end method

.method public abstract getUtdId(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public abstract onCaughException(Ljava/lang/Throwable;)V
.end method

.method public abstract start(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract stop(Landroid/content/Context;)V
.end method
