.class Lw3/q0$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw3/q0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field a:I

.field b:Ljava/lang/Object;

.field c:Ljava/lang/RuntimeException;


# direct methods
.method constructor <init>(ILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lw3/q0$c;->a:I

    iput-object p2, p0, Lw3/q0$c;->b:Ljava/lang/Object;

    return-void
.end method
