.class public Lr/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;

.field private final c:Ls/c;

.field private final d:Lr/a;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ls/c;Lr/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lr/b$a;->a:I

    iput-object p2, p0, Lr/b$a;->b:Ljava/lang/String;

    iput-object p3, p0, Lr/b$a;->c:Ls/c;

    iput-object p4, p0, Lr/b$a;->d:Lr/a;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lr/b$a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lr/b$a;->a:I

    return v0
.end method
