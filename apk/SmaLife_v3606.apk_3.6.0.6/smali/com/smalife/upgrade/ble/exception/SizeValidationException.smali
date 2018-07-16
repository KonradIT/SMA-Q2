.class public Lcom/smalife/upgrade/ble/exception/SizeValidationException;
.super Ljava/io/IOException;
.source "SizeValidationException.java"


# static fields
.field private static final serialVersionUID:J = -0x59bfc4d87ddb7c73L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 9
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 10
    return-void
.end method
