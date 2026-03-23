.class public Lw3/l1$a;
.super Lw3/x1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw3/l1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private k:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lw3/x1;-><init>()V

    sget-object v0, Lw3/w3;->a:Ljava/lang/Object;

    iput-object v0, p0, Lw3/l1$a;->k:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Lw3/x1;-><init>()V

    sget-object v0, Lw3/w3;->a:Ljava/lang/Object;

    iput-object p1, p0, Lw3/l1$a;->k:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public K1()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lw3/l1$a;->k:Ljava/lang/Object;

    return-object v0
.end method

.method public b(Lw3/z2;)Z
    .locals 0

    instance-of p1, p1, Lw3/l1$a;

    return p1
.end method

.method public m()Ljava/lang/String;
    .locals 1

    const-string v0, "StopIteration"

    return-object v0
.end method
