.class final Lw3/u2$f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw3/u2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "f"
.end annotation


# instance fields
.field final a:Ljava/lang/String;

.field final b:I


# direct methods
.method constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lw3/u2$f;->a:Ljava/lang/String;

    iput p1, p0, Lw3/u2$f;->b:I

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw3/u2$f;->a:Ljava/lang/String;

    const/4 p1, -0x1

    iput p1, p0, Lw3/u2$f;->b:I

    return-void
.end method
