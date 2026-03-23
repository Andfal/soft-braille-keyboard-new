.class final Lw1/l$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt1/p;
.implements Lt1/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw1/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lw1/l;


# direct methods
.method private constructor <init>(Lw1/l;)V
    .locals 0

    iput-object p1, p0, Lw1/l$b;->a:Lw1/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lw1/l;Lw1/l$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lw1/l$b;-><init>(Lw1/l;)V

    return-void
.end method
