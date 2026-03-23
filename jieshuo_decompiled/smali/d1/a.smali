.class public abstract Ld1/a;
.super Ljava/lang/Throwable;
.source "SourceFile"


# instance fields
.field protected a:Lb1/n;


# direct methods
.method public constructor <init>(Lb1/n;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    iput-object p1, p0, Ld1/a;->a:Lb1/n;

    return-void
.end method


# virtual methods
.method public a()Lb1/n;
    .locals 1

    iget-object v0, p0, Ld1/a;->a:Lb1/n;

    return-object v0
.end method
