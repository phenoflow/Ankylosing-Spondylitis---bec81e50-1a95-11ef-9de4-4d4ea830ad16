cwlVersion: v1.0
steps:
  read-potential-cases-omop:
    run: read-potential-cases-omop.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  giant-ankylosing-spondylitis---primary:
    run: giant-ankylosing-spondylitis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-omop/output
  thrombotic-ankylosing-spondylitis---primary:
    run: thrombotic-ankylosing-spondylitis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: giant-ankylosing-spondylitis---primary/output
  ankylosing-spondylitis-lymph---primary:
    run: ankylosing-spondylitis-lymph---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: thrombotic-ankylosing-spondylitis---primary/output
  ankylosing-spondylitis-behcet---primary:
    run: ankylosing-spondylitis-behcet---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: ankylosing-spondylitis-lymph---primary/output
  ankylosing-spondylitis-cogan---primary:
    run: ankylosing-spondylitis-cogan---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: ankylosing-spondylitis-behcet---primary/output
  atlantooccipital-ankylosing-spondylitis---primary:
    run: atlantooccipital-ankylosing-spondylitis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: ankylosing-spondylitis-cogan---primary/output
  ankylosing-spondylitis-ankylosis---primary:
    run: ankylosing-spondylitis-ankylosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: atlantooccipital-ankylosing-spondylitis---primary/output
  ankylosing-spondylitis-polyarteritis---primary:
    run: ankylosing-spondylitis-polyarteritis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: ankylosing-spondylitis-ankylosis---primary/output
  arthropathy-ankylosing-spondylitis---primary:
    run: arthropathy-ankylosing-spondylitis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: ankylosing-spondylitis-polyarteritis---primary/output
  ankylosing-spondylitis-moschcowitz---primary:
    run: ankylosing-spondylitis-moschcowitz---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: arthropathy-ankylosing-spondylitis---primary/output
  juvenile-ankylosing-spondylitis---primary:
    run: juvenile-ankylosing-spondylitis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: ankylosing-spondylitis-moschcowitz---primary/output
  ankylosing-spondylitis-joint---primary:
    run: ankylosing-spondylitis-joint---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: juvenile-ankylosing-spondylitis---primary/output
  ankylosing-spondylitis-region---primary:
    run: ankylosing-spondylitis-region---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: ankylosing-spondylitis-joint---primary/output
  ankylosing-spondylitis-nodosa---primary:
    run: ankylosing-spondylitis-nodosa---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: ankylosing-spondylitis-region---primary/output
  ankylosing-spondylitis-thromboangiitis---primary:
    run: ankylosing-spondylitis-thromboangiitis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: ankylosing-spondylitis-nodosa---primary/output
  ankylosing-spondylitis-unspecified---primary:
    run: ankylosing-spondylitis-unspecified---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: ankylosing-spondylitis-thromboangiitis---primary/output
  ankylosing-spondylitis-obliteran---primary:
    run: ankylosing-spondylitis-obliteran---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: ankylosing-spondylitis-unspecified---primary/output
  other-ankylosing-spondylitis---primary:
    run: other-ankylosing-spondylitis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: ankylosing-spondylitis-obliteran---primary/output
  thoracic-ankylosing-spondylitis---primary:
    run: thoracic-ankylosing-spondylitis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: other-ankylosing-spondylitis---primary/output
  atlantoaxial-ankylosing-spondylitis---primary:
    run: atlantoaxial-ankylosing-spondylitis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: thoracic-ankylosing-spondylitis---primary/output
  ankylosing-spondylitis-lumbar---primary:
    run: ankylosing-spondylitis-lumbar---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: atlantoaxial-ankylosing-spondylitis---primary/output
  multiple-ankylosing-spondylitis---primary:
    run: multiple-ankylosing-spondylitis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: ankylosing-spondylitis-lumbar---primary/output
  ankylosing-spondylitis-vasculitis---primary:
    run: ankylosing-spondylitis-vasculitis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: multiple-ankylosing-spondylitis---primary/output
  ankylosing-spondylitis-condition---primary:
    run: ankylosing-spondylitis-condition---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: ankylosing-spondylitis-vasculitis---primary/output
  spondylopathy-ankylosing-spondylitis---primary:
    run: spondylopathy-ankylosing-spondylitis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: ankylosing-spondylitis-condition---primary/output
  ankylosing-spondylitis-membrane---primary:
    run: ankylosing-spondylitis-membrane---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: spondylopathy-ankylosing-spondylitis---primary/output
  ankylosing-spondylitis-ankle---primary:
    run: ankylosing-spondylitis-ankle---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: ankylosing-spondylitis-membrane---primary/output
  ankylosing-spondylitis---primary:
    run: ankylosing-spondylitis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: ankylosing-spondylitis-ankle---primary/output
  cervical-ankylosing-spondylitis---primary:
    run: cervical-ankylosing-spondylitis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: ankylosing-spondylitis---primary/output
  ankylosing-spondylitis-spine---primary:
    run: ankylosing-spondylitis-spine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: cervical-ankylosing-spondylitis---primary/output
  limited-ankylosing-spondylitis---primary:
    run: limited-ankylosing-spondylitis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: ankylosing-spondylitis-spine---primary/output
  ankylosing-spondylitis-takayasu's---primary:
    run: ankylosing-spondylitis-takayasu's---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: limited-ankylosing-spondylitis---primary/output
  ankylosing-spondylitis-kawasaki---primary:
    run: ankylosing-spondylitis-kawasaki---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: ankylosing-spondylitis-takayasu's---primary/output
  ankylosing-spondylitis-goodpasture's---primary:
    run: ankylosing-spondylitis-goodpasture's---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: ankylosing-spondylitis-kawasaki---primary/output
  ankylosing-spondylitis-angiitis---primary:
    run: ankylosing-spondylitis-angiitis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule36
      potentialCases:
        id: potentialCases
        source: ankylosing-spondylitis-goodpasture's---primary/output
  ankylosing-spondylitis-hypersensitivity---primary:
    run: ankylosing-spondylitis-hypersensitivity---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule37
      potentialCases:
        id: potentialCases
        source: ankylosing-spondylitis-angiitis---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule38
      potentialCases:
        id: potentialCases
        source: ankylosing-spondylitis-hypersensitivity---primary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
  inputModule32:
    id: inputModule32
    doc: Python implementation unit
    type: File
  inputModule33:
    id: inputModule33
    doc: Python implementation unit
    type: File
  inputModule34:
    id: inputModule34
    doc: Python implementation unit
    type: File
  inputModule35:
    id: inputModule35
    doc: Python implementation unit
    type: File
  inputModule36:
    id: inputModule36
    doc: Python implementation unit
    type: File
  inputModule37:
    id: inputModule37
    doc: Python implementation unit
    type: File
  inputModule38:
    id: inputModule38
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
