.class public Lc2/c$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc2/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:I

.field final synthetic h:Lc2/c;


# direct methods
.method public constructor <init>(Lc2/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lc2/c$b;->h:Lc2/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lc2/c$b;->a:Ljava/lang/String;

    iput-object p3, p0, Lc2/c$b;->b:Ljava/lang/String;

    iput-object p6, p0, Lc2/c$b;->e:Ljava/lang/String;

    iput-object p4, p0, Lc2/c$b;->c:Ljava/lang/String;

    iput-object p5, p0, Lc2/c$b;->d:Ljava/lang/String;

    iput p8, p0, Lc2/c$b;->g:I

    iput-object p7, p0, Lc2/c$b;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc2/c$b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc2/c$b;->d:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc2/c$b;->b:Ljava/lang/String;

    return-object v0
.end method
